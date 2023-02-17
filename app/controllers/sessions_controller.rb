class SessionsController < ApplicationController
    # skip_before_action :authorize, only: :create
    before_action :authorize, except: [:create]

    # an existing user wants to logon to the website. 
    # the user is found using the incoming params. 
    # if user is found, session[:user_id] is updated to user.id
    def create
        # binding.break
        user = User.find_by(email: params[:email])
        if user.authenticate(params[:password])
        # session[:init]= true
        # byebug
        session[:user_id] = user.id
        p session
        render json: user, serializer: UserSerializer
        else 
            render json: {errors:["Not Authorized"]}, status: :unauthorized
        end

    end

    def destroy
        #  binding.break
        # if 
            session[:user_id]
            session.delete :user_id
            head :no_content 
        # else
        #     render json: {errors:["Not authorized"]}, status: :unauthorized
    # end

    
   



end

end 
