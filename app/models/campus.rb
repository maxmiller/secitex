class Campus < ApplicationRecord
  include Selectable
  has_many :participantes

end
