class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :logged_in?
  helper_method :logged_in_user           

  def logged_in?
  	true
  end

  def logged_in_user
  	#simulate logged in user
  	Buyer.first
  end


end
