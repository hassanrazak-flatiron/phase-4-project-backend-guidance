class PathsController < ApplicationController
    # add 404, and 422 as applicable 
    # rescue_from render not found, render unprocessible entity 

   
    def index 
        render json: Path.all.order(:priority)
    end 

    def create 
        path = Path.create!(path_params)
        render json: path 
    end 
    
    def update
        path = Path.find(params[:id])
        path.update!(path_params)
        render json: path, status: :accepted
    end


    def destroy
    path = Path.find(params[:id])
    path.destroy
    head :no_content
    end
    private 
    def path_params
        params.permit(
            :priority, :loan_amt, :interest_rate, :loan_term,:user_id, :career_id
        )
    end 

end
