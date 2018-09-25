class AddMatriculasToEquipes < ActiveRecord::Migration[5.2]
  def change
    add_column :equipes, :matricula1, :string
    add_column :equipes, :matricula2, :string
    add_column :equipes, :matricula3, :string
    add_column :equipes, :matricula4, :string
  end
end
