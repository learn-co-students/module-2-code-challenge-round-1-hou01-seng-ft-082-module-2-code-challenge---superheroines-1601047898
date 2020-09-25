class HeroineassociationsController < ApplicationController
    def new 
        @heroineAssociation = Heroineassociation.new
        @heroines = Heroine.all 
        @powers = Power.all
    end 
    
    def update
        
    end 
end
