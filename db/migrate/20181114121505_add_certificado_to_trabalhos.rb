class AddCertificadoToTrabalhos < ActiveRecord::Migration[5.2]
  def change
    add_column :trabalhos, :certificado, :boolean
  end
end
