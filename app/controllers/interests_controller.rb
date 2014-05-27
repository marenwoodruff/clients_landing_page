class InterestsController < ApplicationController
    
    def index
        @interests = Interest.all
    end

    def new
        @interest = Interest.new
    end

    def create
        @interest = Interest.new(interest_params)
        @interest.save
        redirect_to new_interest_path, notice: "Thanks for signing up!  We will be in touch soon."
    end

    protected
        def interest_params
            params.require(:interest).permit(:email, :username)
        end
end
