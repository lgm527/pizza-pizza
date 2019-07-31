class LoginController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      flash["message"] = "Successfully logged in #{@user.name}!"
      redirect_to @user
    else
      flash["message"] = "Incorrect Username or Password"
      redirect_to new_login_path
    end
  end

  def destroy
    logout
    redirect_to "/login"
  end

end
