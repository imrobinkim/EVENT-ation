class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    if @current_user
      @current_user
    else
      @current_user = User.find_by(username: cookies[:current_user])
    end
  end

  def logged_in?
    current_user != nil
  end
end
