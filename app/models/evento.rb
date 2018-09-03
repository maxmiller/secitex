class Evento < ApplicationRecord
	include Selectable
	has_many :linhas
	has_many :tipo_trabalhos
end
