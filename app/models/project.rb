class Project < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :participants, dependent: :destroy
  belongs_to :user
  enum status: { draft: 0, published: 1, accepting: 2, deleted: 3 }
  mount_uploader :image, ImageUploader
  is_impressionable

  def self.localed_statuses
    statuses.keys.map do |s|
      [ApplicationController.helpers.t("project.status.#{s}"), s]
    end
  end
end
