class HeroinePowersController < ApplicationController
  def new
    @hero_pow = HeroinePower.new
    @heroines = Heroine.all
    @powers = Power.all
  end

  def create
    new_hero_pow = HeroinePower.new(hero_pow_params)
    if !new_hero_pow.valid?
        flash[:errors] = new_hero_pow.errors.full_messages
        redirect_to new_heroine_power_path
    else
        new_hero_pow.save
        redirect_to heroine_path(new_hero_pow.heroine)
    end
  end

  private

  def hero_pow_params
    params.require(:heroine_power).permit(:power_id, :heroine_id, :strength)
  end
end
