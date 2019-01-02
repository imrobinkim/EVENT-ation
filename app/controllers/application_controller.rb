class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user #MEMOIZATION
    if @current_user
      @current_user
    else
      @current_user = User.find_by(username: cookies[:current_user])
    end
  end
end
