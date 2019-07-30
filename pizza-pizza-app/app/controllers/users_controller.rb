class UsersController < ApplicationController
  before_action :find_user, only: [:show, :create, :update, :delete]

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def delete

  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :username, :password, :address)
  end

end
