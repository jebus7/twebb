class SessionsController < ApplicationController
  def new
  end



  	def create
  		user = User.authenticate(params[:username], params[:password])
			if user
				session[:user_id] = user.id
				redirect_to users_dashboard_path, :notice => "Logged in!"
			else
				flash.now.alert = "Invalid email or password"
				redirect_to root_url
  		end
	end

	def destroy
  	session[:admin_id] = nil
  	redirect_to root_url, :notice => "Logged out!"
	end
end

