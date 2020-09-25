class Heroine < ApplicationRecord
    has_many :heroineassociations
    has_many :powers, through: :heroineassociations

    def get_powers
        
    end 
end
