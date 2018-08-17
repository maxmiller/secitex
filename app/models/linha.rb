class Linha < ApplicationRecord
  has_many :membros
  has_many :organizadores, through: :membros
  belongs_to :evento

  include Selectable

  def coordenador
    self.membros.where(coordenador: true)
  end
end
