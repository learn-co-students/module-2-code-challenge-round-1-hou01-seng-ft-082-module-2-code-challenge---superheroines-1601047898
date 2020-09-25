class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroines = Heroine.find(params[:id])
  end

end
