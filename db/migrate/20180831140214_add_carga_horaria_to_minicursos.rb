class AddCargaHorariaToMinicursos < ActiveRecord::Migration[5.2]
  def change
    add_column :minicursos, :carga_horaria, :integer
  end
end
