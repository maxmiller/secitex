class AddDataToMinicursos < ActiveRecord::Migration[5.2]
  def change
    add_column :minicursos, :data, :string
  end
end
