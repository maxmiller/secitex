class Equipe < ApplicationRecord
  belongs_to :participante
  has_many :alunos


  accepts_nested_attributes_for :alunos, :reject_if => proc { |params| params['nome'].blank? }

  validates :nome, presence: true

  #validate :validar_alunos
  validates :alunos, length: { minimum: 2, maximum: 4 }

  STATUS = {
    nao_validada: -1,
    pendente: 0,
    validada: 1
  }

  def status_equipe(status)
  	if status == Equipe::STATUS[:validada]
      return "<span class='label label-success'>Validada</span>"
    elsif situacao == Equipe::STATUS[:nao_validada]
      return "<span class='label label-danger'>Não Validada</span>"
    else
      return "<span class='label label-default'>Validação Pendente</span>"
    end
  end

  private

  def validar_alunos
  	errors.add(:alunos, "São necessário pelo menos dois alunos na equipe") if alunos.size < 2
  end

end