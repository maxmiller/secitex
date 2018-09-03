class TipoMinicurso < ApplicationRecord
  include Selectable
  has_many :minicurso
end
