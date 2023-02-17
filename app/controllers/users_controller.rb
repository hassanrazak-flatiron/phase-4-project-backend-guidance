class UsersController < ApplicationController
    # add 404, and 422 as applicable 
    # rescue_from render not found, render unprocessible entity 
    # find out how to display error codes on user interface with ix. 
    
    # skip_before_action :authorize, only: :create

    def create
        user  = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def show
        render json: User.find(session[:user_id])
    end

    private

    def user_params
        params.permit(:first_name,:last_name,:email,:password)
    end



end
