class AddAttachmentArquivoFinalToTrabalhos < ActiveRecord::Migration[4.2]
  def up
    change_table :trabalhos do |t|
      t.attachment :arquivo_final
    end
  end

  def down
    remove_attachment :trabalhos, :arquivo_final
  end
end