class WateringsController < ApplicationController
    def create
      @plant = Plant.find(params[:plant_id])
      @watering = @plant.waterings.create
      redirect_to plant_path(@plant)
    end

    # private
    #   def watering_params
    #     params.require(:watering).permit(:last_watering)
    #   end
end
