class HeroinepowersController < ApplicationController
    def new
        @heroine = Heroine.all
        @power = Power.all
    end

end
