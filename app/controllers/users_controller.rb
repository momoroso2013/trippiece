class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @projects = Project.where(user_id: @user.id)
  end
end
