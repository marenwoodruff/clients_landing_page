class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.where(:email => params[:session][:email]).first

    if @user == nil || !@user.authenticate(params[:session][:password])
      flash[:error] = "Invalid email/password combination"
      render 'new'
    else
      session[:remember_token] = @user.id
      @current_user = @user
      redirect_to interests_path
    end

  end

  def destroy
    session.delete(:remember_token)
    redirect_to new_session_path
  end

end
