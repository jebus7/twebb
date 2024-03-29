class UsersController < ApplicationController
  before_filter :authorize!

  def dashboard
		@patients = Patient.all
	end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Sign up successful!"
    else
      render "new"
    end
  end
end

