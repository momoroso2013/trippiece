class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.text       :message
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
