class Project < ApplicationRecord
  has_many :project_users
  has_many :users, through: :project_users

  enum status: { draft: 0, published: 1, accepting: 2, deleted: 3 }
  mount_uploader :image, ImageUploader
end
