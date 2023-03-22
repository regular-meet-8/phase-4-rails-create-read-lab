class PlantsController < ApplicationController
    def index
      plant = Plant.all 
  
      render json: plant
    end
  
    def show
      id = params[:id]
      plant = Plant.find(id)
  
      render json: plant
    end
  
    def create
      plant = Plant.create(params.permit(:name, :image, :price))
  
      render json: plant, status: :created
  
    end
  end