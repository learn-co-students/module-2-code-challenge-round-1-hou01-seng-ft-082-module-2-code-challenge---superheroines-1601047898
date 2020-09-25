class HeroinesController < ApplicationController
  before_action :current_heroine, only:[:show, :edit, :update, :destroy]
  def index
    @heroines = Heroine.all
  end

  def show 
  end 
  
  
  
  def current_heroine
    @heroine = Heroine.find(params[:id])
  end 
end
