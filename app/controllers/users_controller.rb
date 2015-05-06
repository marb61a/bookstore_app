class UsersController < ApplicationController
  
  def show
  end

  def new
    @user = User.new
    @user.addresses.build
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'User has been created.'
      redirect_to signin_path
    else
      flash[:danger] = 'User has not been created.'
      render :new
    end
  end
  
end