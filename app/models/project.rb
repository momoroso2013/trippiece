class Project < ApplicationRecord
  has_many :participants
  belongs_to :user
  enum status: { draft: 0, published: 1, accepting: 2, deleted: 3 }
  mount_uploader :image, ImageUploader
  is_impressionable
end
