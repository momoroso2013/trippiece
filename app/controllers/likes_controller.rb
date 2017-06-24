class LikesController < ApplicationController
  def create
    @user_id = current_user.id
    @project = Project.find(params[:project_id])
    @like = Like.new(project_id: @project.id, user_id: @user_id)
    if @like.save
      redirect_to project_path(@project)
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @project = Project.find(params[:project_id])
    if @like.destroy
    redirect_to project_path(@project)
    end
  end
end
