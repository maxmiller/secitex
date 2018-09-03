class CreateMinistrantes < ActiveRecord::Migration[5.2]
  def change
    create_table :ministrantes do |t|
      t.string :nome
      t.references :minicurso, foreign_key: true

      t.timestamps
    end
  end
end
