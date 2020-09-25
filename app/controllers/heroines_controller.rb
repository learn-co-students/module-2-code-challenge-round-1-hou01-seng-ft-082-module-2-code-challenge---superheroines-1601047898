class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show 
    @student = Student.find(params[:id])
  end 

  def 
end
