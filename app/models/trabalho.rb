class Trabalho < ApplicationRecord
  belongs_to :linha
  belongs_to :participante
  belongs_to :tipo_trabalho
  has_many :avaliacoes, class_name: 'AvaliacaoTrabalho', dependent: :destroy
  has_many :autores

  accepts_nested_attributes_for :autores, :reject_if => proc { |params| params['nome'].blank? }

  before_destroy :apagar_arquivo
  #after_create :definir_avaliadores

  validates :titulo, :resumo, :linha_id, :tipo_trabalho_id, presence: true

  has_attached_file :arquivo, {
    path: "public/system/:class/:attachment/:id/:style/:filename",
    url: "system/:class/:attachment/:id/:style/:filename"
  }
  validates_attachment :arquivo, presence: true, content_type: { content_type: [ "application/msword", "application/vnd.openxmlformats-officedocument.wordprocessingml.document" ] }

  SITUACOES = {
    nao_selecionado: -1,
    pendente: 0,
    apto_mas_nao_selecionado: 1,
    selecionado: 2,
    avaliado: 3,
    finalista: 4,
    nao_finalista: 5
  }

  def download
    if Rails.env.production?
      return "/#{self.arquivo.url}"
    else
      return "/#{self.arquivo.url}"
    end
  end

  def nota_avaliador(organizador)
    avaliacao = self.avaliacoes.where(organizador_id: organizador.id).first
    return avaliacao.criterio1.to_i + avaliacao.criterio2.to_i + avaliacao.criterio3.to_i + avaliacao.criterio4.to_i + avaliacao.criterio5.to_i + avaliacao.criterio6.to_i
  end

  def nota_geral
    avaliacao1 = self.avaliacoes.first
    avaliacao2 = self.avaliacoes.last
    nota1 = avaliacao1.criterio1.to_i + avaliacao1.criterio2.to_i + avaliacao1.criterio3.to_i + avaliacao1.criterio4.to_i + avaliacao1.criterio5.to_i + avaliacao1.criterio6.to_i
    nota2 = avaliacao2.criterio1.to_i + avaliacao2.criterio2.to_i + avaliacao2.criterio3.to_i + avaliacao2.criterio4.to_i + avaliacao2.criterio5.to_i + avaliacao2.criterio6.to_i

    return (nota1+nota2)/2
  end

  def minha_avaliacao(organizador)
    return self.avaliacoes.where(organizador_id: organizador.id).first
  end

  def situacao_avaliacao(organizador)
    return self.avaliacoes.where(organizador_id: organizador.id).first.situacao
  end

  def situacao_avaliacao_geral
    avaliacoes = self.avaliacoes
    if avaliacoes.length != 2
      return AvaliacaoTrabalho::SITUACOES[:pendente]
    end
    avaliacoes.each do |avaliacao|
      if avaliacao.situacao == AvaliacaoTrabalho::SITUACOES[:pendente]
        return AvaliacaoTrabalho::SITUACOES[:pendente]
      end
    end
    return AvaliacaoTrabalho::SITUACOES[:avaliado]
  end

  def avaliacao_pendente?(organizador)
    avaliacao = self.avaliacoes.where(organizador_id: organizador.id).first
    return avaliacao.situacao == AvaliacaoTrabalho::SITUACOES[:pendente]
  end
  
  def avaliacao_geral_pendente?
    avaliacoes = self.avaliacoes
    avaliacoes.each do |avaliacao|
      if avaliacao.situacao == AvaliacaoTrabalho::SITUACOES[:pendente]
        return true
      end
    end
    return false
  end

  def status_situacao(situacao)
    if situacao == Trabalho::SITUACOES[:selecionado]
      return "<span class='label label-success'>Selecionado</span>"
    elsif situacao == Trabalho::SITUACOES[:nao_selecionado]
      return "<span class='label label-danger'>Não selecionado</span>"
    elsif situacao == Trabalho::SITUACOES[:aprovado_mas_nao_classificado]
      return "<span class='label label-warning'>Apto mas não selecionado</span>"
    elsif situacao == Trabalho::SITUACOES[:avaliado]
      return "<span class='label label-info'>Avaliado</span>"
    elsif situacao == Trabalho::SITUACOES[:pendente]
      return "<span class='label label-default'>Pendente</span>"
    elsif situacao == Trabalho::SITUACOES[:finalista]
      return "<span class='label label-success'>Finalista</span>"
    elsif situacao == Trabalho::SITUACOES[:nao_finalista]
      return "<span class='label label-danger'>Não finalista</span>"
    end
  end

  def apagar_arquivo
    self.arquivo.destroy
  end

  def definir_avaliacao_para_avaliador(avaliador)
    AvaliacaoMailer.avaliacao_atribuida(avaliador, self).deliver_now
    sleep(15)
    self.avaliacoes << AvaliacaoTrabalho.new(trabalho: self, organizador: avaliador)
  end

  def definir_avaliadores
    2.times { self.atribuir_avaliador } if self.avaliacoes.length == 0
    self.atribuir_avaliador if self.avaliacoes.length == 1
  end


  def avaliacoes_linha_atual
    avaliadores = self.avaliadores(self.linha)
    return self.avaliacoes.where("organizador_id in (#{avaliadores.map(&:id).join(',')})")
  end

  def avaliadores(linha = nil)
    avaliadores = Array.new
    self.avaliacoes.each do |avaliacao|
      if linha.present?
        if avaliacao.organizador.linhas.include?(linha)
          avaliadores << avaliacao.organizador
        end
      else
        avaliadores << avaliacao.organizador
      end
    end
    return avaliadores
  end

  def atribuir_avaliador
    avaliadores_candidatos = (self.linha.organizadores - self.avaliadores)

    avaliadores_suspensos = Array.new

    Membro.all.each do |avaliador|
      if avaliador.linha.evento.nome != "VI MOSTRA TECNOLÓGICA"
        avaliacoes = AvaliacaoTrabalho.where(organizador_id: avaliador.organizador.id)
        avaliacoesPendentes = AvaliacaoTrabalho.where(organizador_id: avaliador.organizador.id).where(situacao: 0)
        avaliacoesFinalizadas = AvaliacaoTrabalho.where(organizador_id: avaliador.organizador.id).where(situacao: 5)
        if avaliacoesFinalizadas.length == 0 and avaliador.created_at < Time.parse("2018-10-01")
          avaliadores_suspensos << avaliador.organizador
        end
      end
    end

    avaliadores_candidatos = avaliadores_candidatos - avaliadores_suspensos

    if self.id == 910 || self.id == 1087 || self.id ==1008 || self.id == 1089
      autor = Organizador.find_by(id: 323)
      avaliadores_candidatos = avaliadores_candidatos - Array(autor)
    elsif self.id == 1182 || self.id == 54
      autor = Organizador.find_by(id: 222)
      avaliadores_candidatos = avaliadores_candidatos - Array(autor)
    elsif self.id == 699 || self.id == 1192
      autor = Organizador.find_by(id: 230)
      avaliadores_candidatos = avaliadores_candidatos - Array(autor)
    elsif self.id == 1236
      autor = Organizador.find_by(id: 152)
      avaliadores_candidatos = avaliadores_candidatos - Array(autor)
    elsif self.id == 215
      autor = Organizador.find_by(id: 345)
      avaliadores_candidatos = avaliadores_candidatos - Array(autor)
    elsif self.id == 322
      autor = Organizador.find_by(id: 357)
      avaliadores_candidatos = avaliadores_candidatos - Array(autor)
    end

    if avaliadores_candidatos.empty?
      raise RuntimeError, 'Não há avaliadores suficientes para atribuir!'
    end

    avaliacoes = avaliadores_candidatos.first.avaliacoes_trabalhos.size
    avaliador = avaliadores_candidatos.first

    avaliadores_candidatos.each do |candidato|
      if candidato.avaliacoes_trabalhos.size < avaliacoes
        avaliacoes = candidato.avaliacoes_trabalhos.size
        avaliador = candidato
      end
    end

    AvaliacaoMailer.avaliacao_atribuida(avaliador, self).deliver_now
    sleep(15)
    self.avaliacoes << AvaliacaoTrabalho.new(trabalho: self, organizador: avaliador)
  end

  def self.aprovados
    self.all.select { |trabalho| trabalho.aprovado? }
  end

  def pendente?
    return self.situacao == AvaliacaoTrabalho::SITUACOES[:pendente]
  end

  def aprovado?
    return self.situacao == AvaliacaoTrabalho::SITUACOES[:aprovado]
  end

  def reprovado?
    return self.situacao == AvaliacaoTrabalho::SITUACOES[:reprovado]
  end

  def outra_linha?
    return self.situacao == AvaliacaoTrabalho::SITUACOES[:outra_linha]
  end
end
