class ApplicationController < ActionController::Base
  helper_method :current_user, :first_name, :last_name, :no_empty_fields, :events_attending, :logged_in?


  def current_user
    if @current_user
      @current_user
    else
      @current_user = User.find_by(username: cookies[:current_user])
    end
  end

  def first_name(full_name)
    full_name.split(" ")[0]
  end

  def last_name(full_name)
    full_name.split(" ")[-1]
  end

  def no_empty_fields(event_info)
      event_info.select do |info|
        info
      end
  end

  def events_attending(person)
  person.events.find do |x|
     return x.name
     end
  end

  def logged_in?
    current_user != nil
  end
end
