class AddCriteriosToAvaliacoesTrabalhos < ActiveRecord::Migration[5.2]
  def change
    add_column :avaliacoes_trabalhos, :criterio1, :integer
    add_column :avaliacoes_trabalhos, :criterio2, :integer
    add_column :avaliacoes_trabalhos, :criterio3, :integer
    add_column :avaliacoes_trabalhos, :criterio4, :integer
    add_column :avaliacoes_trabalhos, :criterio5, :integer
    add_column :avaliacoes_trabalhos, :criterio6, :integer
  end
end
