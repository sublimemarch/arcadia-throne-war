class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def index

  end

  def rules

  end

  def current_user

  end

  helper_method :current_user

end
