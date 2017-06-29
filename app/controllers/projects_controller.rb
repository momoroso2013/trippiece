class ProjectsController < ApplicationController

  impressionist actions: [:show,:index]
  before_action :find_user, only: [:index, :new, :create, :show, :edit]
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.where(status: [:accepting,:published])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to :root
    else
      render :new
    end
  end

  def show
    @participant_user_ids = @project.participants.pluck(:user_id)
    @project_user = @project.user
    @like = Like.where(project_id: @project.id, user_id: current_user.id).first
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to :root
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to :root
  end

  private

  def find_user
    @user = current_user
  end

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params
    .require(:project)
    .permit(:title, :description, :image, :place, :price, :detail, :start_at, :end_at, :status)
    .merge(user_id: current_user.id)
  end

end

