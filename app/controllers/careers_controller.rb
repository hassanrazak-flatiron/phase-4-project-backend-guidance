class CareersController < ApplicationController

    # add 404, and 422 as applicable 
    # rescue_from render not found, render unprocessible entity 
     def index
        render json: Career.all.sort_by{rand} , status: :ok 
    end

    def show 
        career = Career.find(params[:id])
        render json: career
    end 

    

end
