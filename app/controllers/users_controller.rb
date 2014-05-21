class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save  
          flash[:notice] = "You have signed up successfully"
          redirect_to :root
        else
          render :new          
          flash[:error] = "aww shucks, user was not created!"
        end
    end


  protected
    
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
