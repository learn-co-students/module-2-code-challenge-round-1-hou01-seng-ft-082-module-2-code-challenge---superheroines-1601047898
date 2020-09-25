class HeroinePowersController < ApplicationController


    def index
        @heroinepowers = HeroinePower.all
    end 

    def new
        @heroinepower = HeroinePower.new
        @powers = Power.all
        @heroines = Heroine.all
    end 

    def create
        @heroinepower = HeroinePower.new(hp_params)
        @heroine = Heroine.find(@heroinepower.heroine_id)
        #byebug
        if !@heroinepower.valid?
            flash[:errors] = @heroinepower.errors.full_messages
            redirect_to new_heroine_power_path
        else 
        #@heroine = Heroine.find(@heroinepower.heroine_id)
        @heroinepower.save
        redirect_to heroine_path(@heroine)
        end
    end 

    def hp_params
        params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
    end 
end
