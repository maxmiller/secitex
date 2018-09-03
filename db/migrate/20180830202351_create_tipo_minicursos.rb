class CreateTipoMinicursos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_minicursos do |t|
      t.string :nome
      t.string :slug

      t.timestamps
    end
  end
end
