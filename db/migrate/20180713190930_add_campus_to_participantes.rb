class AddCampusToParticipantes < ActiveRecord::Migration[5.2]
  def change
    add_reference :participantes, :campus, foreign_key: true
  end
end
