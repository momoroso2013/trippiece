class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.text :title,             null: false
      t.text :description,       null: false
      t.string :image
      t.string :place
      t.integer :price
      t.integer :start_at
      t.integer :end_at
      t.text :detail
      t.references :user,       foreign_key: true
      t.integer :status,        null: false, draft: 0, published: 1, accepting: 2, deleted: 3
      t.timestamps
    end
  end
end
