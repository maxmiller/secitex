class Equipe < ApplicationRecord
  belongs_to :participante
  
  validates :status, :nome, :aluno1, :aluno2, :matricula1, :matricula2, presence: true

  #validate :validar_alunos
  
  STATUS = {
    nao_validada: -1,
    pendente: 0,
    validada: 1
  }

  def status_equipe(status)
  	if status == Equipe::STATUS[:validada]
      return "<span class='label label-success'>Validada</span>"
    elsif status == Equipe::STATUS[:nao_validada]
      return "<span class='label label-danger'>Não Validada</span>"
    else
      return "<span class='label label-default'>Validação Pendente</span>"
    end
  end

  def validada?
    self.status == STATUS[:validada]
  end

  private

  #def validar_alunos
  #	errors.add(:alunos, "São necessário pelo menos dois alunos na equipe") if alunos.size < 2
  #end

end