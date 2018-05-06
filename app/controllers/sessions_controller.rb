class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user.email == "admin@gmail.com" || user.email == "franz@gmail.com"
      admin == true
    end
    if user && user.authenticate(params[:password])
      flash[:notice] = "#{user.name} signed in"
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/sign_in'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/sign_in'
    flash[:notice] = "Signed out"
  end

end
