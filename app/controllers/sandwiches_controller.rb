class SandwichesController < ApplicationController
    def index
        sandwiches = Sandwich.all
        render json: sandwiches
    end
    
    def show
        sandwich = Sandwich.find(params[:id])
        render json: game
    end

    def create
    end

    def delete
    end
private

def sandwich_params
    params.require(:sandwich).permit(:name, :price, :meal_of_week, :user_id)
end
end
