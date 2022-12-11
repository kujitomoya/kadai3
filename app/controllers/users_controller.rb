class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def index
  end

  def show
  end
end
