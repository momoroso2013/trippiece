class Participant < ApplicationRecord
  has_many :projects
  belongs_to :user
end
