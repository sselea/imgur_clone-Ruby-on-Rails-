class UsersController < ApplicationController
  
  def show

  end

  def new
    @user= User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path, :notice => "Signed Up"
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  
    def user_params 
      params.require(:user).permit(:email, :user_name, :password, :password_confirmation, :avatar)
    end
end
