class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :logged_in?

	def current_user
		session[:name]
	end

	private

	def logged_in?
		return redirect_to login_path unless current_user
	end

end