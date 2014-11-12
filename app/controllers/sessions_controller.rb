class SessionsController < ApplicationController
   def new
  end

  def create
    if login(params[:username], params[:password])
      redirect_back_or_to(root_path, notice: 'Logged in successfully.')
    else
      flash.now.alert = "Login failed."
      render action: :new
    end
  end

end
