class AddParticipantRefToProjects < ActiveRecord::Migration[5.0]
  def change
    add_reference :projects, :participant, foreign_key: true
  end
end
