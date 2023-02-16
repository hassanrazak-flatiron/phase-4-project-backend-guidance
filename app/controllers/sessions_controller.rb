class SessionsController < ApplicationController
    skip_before_action :authorize, only: :create

    # an existing user wants to logon to the website. 
    # the user is found using the incoming params. 
    # if user is found, session[:user_id] is updated to user.id
    def create
        user = User.find_by(email: params[:email])
        user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user, seralizers:UserSerializer
    end

    def destroy
        #  binding.break
        session.destroy
        head :no_content
    end

   



end
