class HeroinePowersController < ApplicationController

    def new
        @heroine_power = HeroinePower.new
        @heroines = Heroine.all 
        @powers = Power.all 
    end 
    
    def create
        new_hp = HeroinePower.new

        if !new_hp.valid?
            flash[:erros] = new_hp.errors.full_messages
            redirect_to new_heroine_power_path
        else
            new_hp.save
            redirect_to heroines_path
        end 
    end  

end 