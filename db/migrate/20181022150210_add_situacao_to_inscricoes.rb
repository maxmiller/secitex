class AddSituacaoToInscricoes < ActiveRecord::Migration[5.2]
  def change
    add_column :inscricoes, :situacao, :integer
  end
end
