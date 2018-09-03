class AddTipoMinicursoToMinicursos < ActiveRecord::Migration[5.2]
  def change
    add_reference :minicursos, :tipo_minicurso, foreign_key: true
  end
end
