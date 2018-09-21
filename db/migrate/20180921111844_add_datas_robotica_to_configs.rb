class AddDatasRoboticaToConfigs < ActiveRecord::Migration[5.2]
  def change
    add_column :configs, :data_inicio_inscricoes_robotica, :date
    add_column :configs, :data_termino_inscricoes_robotica, :date
  end
end
