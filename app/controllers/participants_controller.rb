class ParticipantsController < ApplicationController

  before_action :find_user, only: [:new, :create]

  def new
    @participant = Participant.new
    @project = Project.find(params[:project_id])
  end

  def create
    @participant = Participant.new(participant_params)
    if @participant.save
      redirect_to :root
    else
      render :new
    end
  end

  private

  def find_user
    @user = current_user
  end

  def participant_params
    params
      .require(:participant)
      .permit(:message)
      .merge(project_id: params[:project_id], user_id: current_user.id)
  end
end
