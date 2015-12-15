class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password]) == @user
      session[:user_id] = @user.id
      flash[:success] = "Logged in as #{@user.name}"
      redirect_to '/feed'
    else
      flash[:notice] = "Check for errors"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Successfully logged out"
    redirect_to '/'
  end
end
