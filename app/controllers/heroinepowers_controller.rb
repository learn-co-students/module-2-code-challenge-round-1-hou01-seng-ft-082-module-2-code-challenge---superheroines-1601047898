class HeroinepowersController < ApplicationController
  
  
  
  def new
    @heroinepower = Heroinepower.new
    @powers = Power.all 
    @heroines = Heroine.all
  end


  def create
    new_heroinepower = Heroinepower.create(heroine_params)
    new_heroinepower.save
    redirect_to heroine_path(new_heroinepower)
    

  end

  private
  
  def heroine_params
    params.require(:heroinepower).permit(:heroine_id, :power_id)
  end 

end
