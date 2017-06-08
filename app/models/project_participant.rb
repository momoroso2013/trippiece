class ProjectParticipant < ApplicationRecord
  belongs_to :participant
  belongs_to :project
end
