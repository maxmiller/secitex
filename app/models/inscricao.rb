class Inscricao < ApplicationRecord
  belongs_to :participante
  belongs_to :minicurso

  validate :disponibilidade_vagas

  after_create do
    InscricaoMailer.realizada(self).deliver_now
  end

  before_destroy do
    InscricaoMailer.cancelada(self).deliver_now
  end

  after_destroy do
    if self.minicurso.tem_suplentes? and self.situacao == Inscricao::SITUACOES[:confirmado]
      primeiro_suplente = Inscricao.where(minicurso_id: self.minicurso.id, situacao: 0).order(created_at: :asc).first
      primeiro_suplente.update(situacao: 1)
      InscricaoMailer.atualizada(primeiro_suplente).deliver_now
    end
  end

  SITUACOES = {
    suplente: 0,
    confirmado: 1
  }

  #def emitir_certificado?
  #  if self.certificado
  #    return "Sim"
  #  else
  #    return "Não"
  #  end
  #end

  def colocacao_suplencia
    inscricoes = Inscricao.where(minicurso_id: self.minicurso.id, situacao: 0).order(created_at: :asc)
    inscricoes.each.each_with_index do |inscricao,index|
      if inscricao == self
        return index + 1
      end
    end
  end

  def status_situacao()
    if self.situacao == Inscricao::SITUACOES[:suplente]
      return "<span class='label label-warning'>Suplente</span>"
    elsif self.situacao == Inscricao::SITUACOES[:confirmado]
      return "<span class='label label-success'>Confirmado</span>"
    end
  end
  

  def disponibilidade_vagas
    unless self.minicurso.tem_vagas?
      errors.add(:base, "Não existem vagas disponíveis")
    end
  end

  def emitir_certificado?
    self.certificado
  end

  def self.emitir_certificados
    self.where(certificado: true)
  end
end
