class AddAlunosToEquipes < ActiveRecord::Migration[5.2]
  def change
    add_column :equipes, :aluno1, :string
    add_column :equipes, :aluno2, :string
    add_column :equipes, :aluno3, :string
    add_column :equipes, :aluno4, :string
  end
end
