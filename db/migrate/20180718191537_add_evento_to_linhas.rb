class AddEventoToLinhas < ActiveRecord::Migration[5.2]
  def change
    add_reference :linhas, :evento, foreign_key: true
  end
end
