class SessionsController < ApplicationController
  def new
    redirect_to root_path if current_user
  end
  
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Sign in successful."
      redirect_to root_path
    else
      flash.now[:danger] = "Invalid email/password combination."
      render :new  
    end
  end
end
