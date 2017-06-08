class Project < ApplicationRecord
  has_many :project_participants
  has_many :participants, through: :project_participants
  belongs_to :user
  enum status: { draft: 0, published: 1, accepting: 2, deleted: 3 }
  mount_uploader :image, ImageUploader
end
