class DeleteTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :project_users
  end
end
