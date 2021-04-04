class SessionsController < ApplicationController

  skip_before_action :logged_in?, only: [:new, :create]

	def new
	end


  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
		session[:name] = params[:name]
		redirect_to './'
	end
end 

 
  def destroy
		session.delete(:name)
		redirect_to login_path
	end

end 
