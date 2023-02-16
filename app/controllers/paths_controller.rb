class PathsController < ApplicationController
    # add 404, and 422 as applicable 
    # rescue_from render not found, render unprocessible entity 

   
    def index 
        render json: Path.all
    end 
    

    def destroy

    end

end
