class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.email == 'administrator@gmail.com' || user.email == 'admin@gmail.com'
      user.admin = true
    end

    if user.save
      flash[:notice] = "Thank you, #{user.name}. Your account has been created."
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
