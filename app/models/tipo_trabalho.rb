class TipoTrabalho < ApplicationRecord
  has_many :trabalhos
  belongs_to :evento

  include Selectable

  def to_s
    if self.slug == 'apresentacao_oral'
      return "apresentação oral"
    else
      return "pôster"
    end
  end
end
