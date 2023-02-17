class PathsController < ApplicationController
    # add 404, and 422 as applicable 
    # rescue_from render not found, render unprocessible entity 

   
    def index 
        render json: Path.all
    end 
    

    def destroy
    path = Path.find(params[:id])
    path.destroy
    head :no_content
    end

end
