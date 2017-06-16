class ProjectsController < ApplicationController

  impressionist actions: [:show,:index]
  before_action :find_user, only: [:index, :new, :create, :show, :edit]

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
    @project = Project.find(params[:id])
    @user = @project.user
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to :root
    else
      render :edit
    end
  end

  private

  def find_user
    @user = current_user
  end

  def project_params
    params
    .require(:project)
    .permit(:title, :description, :image, :place, :price, :detail, :start_at, :end_at, :status)
    .merge(user_id: current_user.id)
  end

end

