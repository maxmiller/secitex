class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :maticula
      t.references :equipe, foreign_key: true

      t.timestamps
    end
  end
end
