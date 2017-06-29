class LikesController < ApplicationController
  def create
    @user_id = current_user.id
    @project = Project.find(params[:project_id])
    @like = Like.new(project_id: @project.id, user_id: @user_id)
    @like.save
  end

  def destroy
    like = Like.find(params[:id])
    @project = Project.find(params[:project_id])
    like.destroy
  end
end
