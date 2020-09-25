class Power < ApplicationRecord
    has_many :heroine_powers
    has_many :heroines, through: :heroine_powers
    
    def number_of_heroines
        self.heroines.count
    end 
end
