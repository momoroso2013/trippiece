class ParticipantsController < ApplicationController

  def new
    @participant = Participant.new
    @project = Project.find(params[:project_id])
  end

  def create
    @participant = Participant.new(participant_params)
    # binding.pry
    @participant.save
  end

  private

  def participant_params
    params
      .require(:participant)
      .permit(:message)
  end
end
