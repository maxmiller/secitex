class AddEventoToTipoTrabalhos < ActiveRecord::Migration[5.2]
  def change
    add_reference :tipo_trabalhos, :evento, foreign_key: true
  end
end
