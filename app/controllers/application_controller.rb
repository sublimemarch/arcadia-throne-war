class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def index
    if logged_in?
      redirect_to new_game_character_path
    else
      redirect_to login_path
    end
  end

  def rules
    @butts = "HI HELLO I AM WORDS"
  end

  def current_user
    @_current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user != nil
  end

  helper_method :current_user

end
