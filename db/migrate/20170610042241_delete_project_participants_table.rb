class DeleteProjectParticipantsTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :project_participants
  end
end
