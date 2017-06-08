class Participant < ApplicationRecord
  has_many :project_participants
  has_many :projects, through: :project_participants
  belongs_to :users
end
