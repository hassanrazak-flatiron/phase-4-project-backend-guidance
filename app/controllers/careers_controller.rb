class CareersController < ApplicationController

    # add 404, and 422 as applicable 
    # rescue_from render not found, render unprocessible entity 
     def index
        render json: Career.all, status: :ok 

    end

    

end
