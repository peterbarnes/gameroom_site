class SessionsController < ApplicationController
  def new
    
  end

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id.to_s
      cookies.permanent[:remember_token] = session[:user_id]
      redirect_to blurbs_path
    else
      flash.now[:danger] = "Invalid name/password combination"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    cookies.delete(:remember_token)
    flash[:success] = "Logged out!"
    redirect_to root_url  
  end
end
