class AddSituacaoToTrabalhos < ActiveRecord::Migration[5.2]
  def change
    add_column :trabalhos, :situacao, :integer
  end
end
