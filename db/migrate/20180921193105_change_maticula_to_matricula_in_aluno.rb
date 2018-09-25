class ChangeMaticulaToMatriculaInAluno < ActiveRecord::Migration[5.2]
  def change
  	rename_column :alunos, :maticula, :matricula
  end
end
