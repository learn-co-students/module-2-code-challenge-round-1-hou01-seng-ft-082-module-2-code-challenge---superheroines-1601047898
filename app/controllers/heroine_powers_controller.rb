class HeroinePowersController < ApplicationController
  
    def index
      @heroine_powers = HeroinePower.all
    end
  
    def show
      @heroine_power = HeroinePower.find(params[:id])
    end
  
    # def new
    #   @heroine = Heroine.new
    # end
  
    # def create
    #   new_heroine = Heroine.new(hero_params)
  
    #   if !new_heroine.valid?
    #     flash[:errors] = new_heroine.errors.full_messages
    #     redirect_to new_heroine_path
    #   else
    #     new_heroine.save
    #     redirect_to heroine_path(new_heroine)
    #   end
    # end
  
    # def edit
    #   @heroine = Heroine.find(params[:id])
    #   @powers = Power.all
    # end
  
    # def update
    #   @heroine = Heroine.find(params[:id])
    #   @heroine.update(hero_params)
    #   redirect_to heroines_path
    # end
  
    # def destroy
    #   @heroine = Heroine.find(params[:id])
    #   @heroine.destroy
    #   redirect_to heroines_path
    # end
  
    # private
    # def hero_params
    #   params.require(:heroine).permit(:name, :super_name)
    # end
  
  end
  