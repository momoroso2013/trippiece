class UsersController < ApplicationController

  def show
    @user = current_user
    @projects = @user.projects
  end
end
