class HeroinePowersController < ApplicationController
    def index
        @heroine_powers = HeroinePower.all
    end

    def show
        @heroine_power = HeroinePower.find(params[:id])
    end

    def new
        @heroine_power = HeroinePower.new
    end
end
