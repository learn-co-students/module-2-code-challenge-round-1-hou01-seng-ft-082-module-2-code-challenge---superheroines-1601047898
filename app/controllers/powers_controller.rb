class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def new
    @power = Power.new
  end

  def create
    new_power = Power.new(power_params)

    if !new_power.valid?
      flash[:errors] = new_power.errors.full_messages
      redirect_to new_power_path
    else
      new_power.save
      redirect_to power_path(new_power)
    end
  end

  def edit
    @power = Power.find(params[:id])
    @heroines = Heroine.all
  end

  def update
    @power = Power.find(params[:id])
    @power.update(power_params)
    redirect_to powers_path
  end

  def destroy
    @power = Power.find(params[:id])
    @power.destroy
    redirect_to powers_path
  end

  private
  def power_params
    params.require(:power).permit(:name, :description, :heroine_id)
  end

end
