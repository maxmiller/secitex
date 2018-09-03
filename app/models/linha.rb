class Linha < ApplicationRecord
  has_many :membros
  has_many :organizadores, through: :membros
  belongs_to :evento
  has_many :minicursos

  include Selectable
  
  def coordenador
    self.membros.where(coordenador: true)
  end
end
