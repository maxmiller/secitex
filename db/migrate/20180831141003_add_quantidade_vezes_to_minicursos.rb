class AddQuantidadeVezesToMinicursos < ActiveRecord::Migration[5.2]
  def change
    add_column :minicursos, :quantidade_vezes, :integer
  end
end
