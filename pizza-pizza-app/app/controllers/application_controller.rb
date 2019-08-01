class ApplicationController < ActionController::Base
  before_action :setup_auth_variables

  def setup_auth_variables
    @user_id = session[:user_id]
    @logged_in = !!@user_id
    if @logged_in
      @current_user = User.find(@user_id)
    end
  end

  def authorized
    if !@logged_in
      return redirect_to '/'
    end
  end

  def logout
    session[:user_id] = nil
  end

  def home

  end

end
