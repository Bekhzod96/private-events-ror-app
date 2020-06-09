class SessionsController < ApplicationController
	def  new

	end

	def create
		user = User.find_by(username: params[:session][:username])
		# User.find_by(username: Bekhzod)
		if user
			session[:user_id] = user.id
			flash[:notice] = "You have successfully logged in"
			redirect_to user_path(user)	
		else
			flash.now[:notice] = "Such a User does not exist. Please sign up!"
			render 'new'
		end
	end
	
	def destroy
		session[:user_id] = nil
		flash[:success] = "You have logged out"
		redirect_to root_path
	end

end