class Minicurso < ApplicationRecord
  belongs_to :participante # Proponente/ministrante
  has_many :inscricoes
  has_many :participantes, through: :inscricoes
  belongs_to :tipo_minicurso
  belongs_to :linha
  has_many :ministrantes

  accepts_nested_attributes_for :ministrantes, :reject_if => proc { |params| params['nome'].blank? }

  validates :carga_horaria, :espaco, :data_horario, :quantidade_vezes, :vagas, :linha_id, :tipo_minicurso_id, :titulo, :justificativa, :objetivos, :metodologia, :programacao, :material, :referencias, presence: true, on: :create
  validates :carga_horaria, :espaco, :data_horario, :quantidade_vezes, :vagas, :linha_id, :tipo_minicurso_id, :titulo, :justificativa, :objetivos, :metodologia, :programacao, :material, :referencias, :local, presence: true, on: :update
  validates :vagas, numericality: { only_integer: true }, on: :update

  before_create :definir_avaliacao

  AVALIACAO = {
    nao_aceito: -1,
    pendente: 0,
    aceito: 1
  }

  def avaliacao_minicurso
    if self.avaliacao == Minicurso::AVALIACAO[:aceito]
      return "<span class='label label-success'>Aceito</span>"
    elsif self.avaliacao == Minicurso::AVALIACAO[:nao_aceito]
      return "<span class='label label-danger'>Não aceito</span>"
    else
      return "<span class='label label-default'>Pendente</span>"
    end
  end

  def definir_avaliacao
    self.avaliacao = AVALIACAO[:pendente]
  end

  def self.aprovados
    self.where(avaliacao: AVALIACAO[:aceito])
  end

  def self.com_vagas
    minicursos = Array.new
    Minicurso.aprovados.each do |minicurso|
      minicursos << minicurso if minicurso.tem_vagas?
    end
    return minicursos
  end

  def vagas_disponiveis
    if self.participantes.length >= self.vagas
      return 0
    else
      return self.vagas - self.participantes.size
    end
  end

  def tem_vagas?
    #self.vagas_disponiveis > 0
    (2 * self.vagas - self.participantes.size) > 0
  end

  def tem_suplencia?
    #self.vagas_disponiveis > 0
    self.vagas <= self.participantes.size
  end

  def tem_suplentes?
    self.vagas < self.participantes.size
  end

  def aprovado?
    self.avaliacao == AVALIACAO[:aceito]
  end

  def quantidade_de_inscritos
    if self.participantes.length > self.vagas
      return self.vagas
    else
      return self.participantes.length
    end
  end

  def quantidade_de_suplentes
    if self.participantes.length > self.vagas
      return self.participantes.length - self.vagas
    else
      return 0
    end
  end

  #def carga_horaria
  #  4
  #end
end
