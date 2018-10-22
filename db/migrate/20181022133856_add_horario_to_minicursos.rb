class AddHorarioToMinicursos < ActiveRecord::Migration[5.2]
  def change
    add_column :minicursos, :horario, :string
  end
end
