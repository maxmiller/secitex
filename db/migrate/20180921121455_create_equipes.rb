class CreateEquipes < ActiveRecord::Migration[5.2]
  def change
    create_table :equipes do |t|
      t.string :nome
      t.integer :status
      t.references :participante, foreign_key: true

      t.timestamps
    end
  end
end
