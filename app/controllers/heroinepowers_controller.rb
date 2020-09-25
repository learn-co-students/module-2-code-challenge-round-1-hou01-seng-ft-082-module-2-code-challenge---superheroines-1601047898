class HeroinepowersController < ApplicationController

    def edit 
        @heroine = Hero.find(params[:id])
    end

    def update 
       @heroine = Hero.find(params[:id])
       @heroine.update(hero_params)
       rediret_to heroine_path(@heroine)
    end 

    def new 
        @heroine = Heroine.save
    end 

    def create 
    end 

    def destroy 
        @heroine = Hero.find(params[:id])
        @heroine.destroy 
        redirect_to heroines_path
    end 
    
    def hero_params
        params.require(:heroine).permit(:name, :supername)
    end 

end 