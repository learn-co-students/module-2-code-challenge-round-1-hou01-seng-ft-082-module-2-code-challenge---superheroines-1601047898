class HeroinePowersController < ApplicationController
    
    def new
        @heroine_power = HeroinePower.new
        @heroines = Heroine.all
        @powers = Power.all
    end

    def create
        @heroine_power = HeroinePower.new(heroine_power_params)
        #add validation here
        if !@heroine_power.valid?
            flash[:errors] = @heroine_power.errors.full_messages
            redirect_to new_heroine_power_path
        else
            @heroine_power.save
            redirect_to heroine_path(@heroine_power.heroine_id)
        end
    end

    private

    def heroine_power_params
        params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
    end
end
