class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email_address: params[:email_address])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Logged in successfully!"
      redirect_to root_path
    else
      flash.now[:alert] = "Invalid email or password"
      render 'new'
    end
  end

  def destroy
  end
end
