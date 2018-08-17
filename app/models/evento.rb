class Evento < ApplicationRecord
	include Selectable
	has_many :linhas
end
