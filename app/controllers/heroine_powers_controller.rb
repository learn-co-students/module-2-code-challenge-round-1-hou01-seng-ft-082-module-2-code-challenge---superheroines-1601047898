class HeroinePowersController < ApplicationController

    def new 
        @powers = Power.all
        @heroines = Heroine.all
        @heroine_power = HeroinePower.new
    end 

    def create 
        heroine = Heroine.find(heroine_power_params[:heroine_id])
        new_heroine_power = HeroinePower.new(heroine_power_params)
        if !new_heroine_power.valid?
            flash[:errors] = new_heroine_power.errors.full_messages
            redirect_to new_heroine_power_path
        else 
            new_heroine_power.save
            redirect_to heroine_path(heroine)
        end 
    end 


    private 

    def heroine_power_params
        params.require(:heroine_power).permit(:heroine_id,:power_id,:strength)
    end 
end
