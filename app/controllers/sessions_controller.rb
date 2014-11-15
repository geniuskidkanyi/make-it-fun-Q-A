class SessionsController < ApplicationController

  def new
  end

  def create
  user = User.find_by_username(params[:username])
  if user && user.authenticate(params[:password])


    redirect_to root_url, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
  end

end
