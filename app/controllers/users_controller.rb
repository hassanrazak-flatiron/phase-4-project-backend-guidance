class UsersController < ApplicationController
    # add 404, and 422 as applicable 
    # rescue_from render not found, render unprocessible entity 
    # find out how to display error codes on user interface with ix. 
    
    # skip_before_action :authorize, only: :create

    def index
        render json: User.all
    end

    def create
        user  = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def show
        render json: User.find(session[:user_id])
    end

    def update
        user = User.find(session[:user_id])
        user.update!(user_params)
        render json: user, status: :accepted
    end

    private

    def user_params
        params.permit(:first_name,:last_name,:email,:password)
    end



end
