class ChangeColumnToProject < ActiveRecord::Migration[5.0]
  def change
    remove_reference :projects, :participant, foreign_key: true
  end
end
