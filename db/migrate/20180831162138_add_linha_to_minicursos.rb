class AddLinhaToMinicursos < ActiveRecord::Migration[5.2]
  def change
    add_reference :minicursos, :linha, foreign_key: true
  end
end
