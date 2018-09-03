class AddEspacoToMinicursos < ActiveRecord::Migration[5.2]
  def change
    add_column :minicursos, :espaco, :string
  end
end
