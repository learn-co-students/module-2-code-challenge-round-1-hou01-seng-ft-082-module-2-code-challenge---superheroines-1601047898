class HeroinePowersController < ApplicationController
  
    def index
      @heroine_powers = HeroinePower.all
    end
  
    def show
      @heroine_power = HeroinePower.find(params[:id])
    end

    def new
        @heroine_power = HeroinePower.new
    end

    def create
        @heroine_power = HeroinePower.new(heroine_power_params)
        @heroine_power.save
        # redirect_to @heroine_power
        redirect_to heroine_power_path(@heroine_power)
    end
    #if there was more time i would have debugged the route to return to the show page

    private

    def heroine_power_params
        params.require(:heroine_power).permit(:strength, :heroine_id, :power_id)
    end
  
  end
  