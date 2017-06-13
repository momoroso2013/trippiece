class ProjectsController < ApplicationController


  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.published!
      redirect_to :root
    else
      render :new
    end
  end


  def show
    @project = Project.find(params[:id])
    @user = @project.user
  end


  private

  def project_params
    params
    .require(:project)
    .permit(:title, :description, :image, :place, :price, :detail, :start_at, :end_at)
    .merge(user_id: current_user.id)
  end

end

