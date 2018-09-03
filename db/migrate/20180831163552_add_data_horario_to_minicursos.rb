class AddDataHorarioToMinicursos < ActiveRecord::Migration[5.2]
  def change
    add_column :minicursos, :data_horario, :string
  end
end
