class HeroinePower < ApplicationRecord
    belongs_to :heroine 
    belongs_to :power


    validates :strength, inclusion: { in: %w(Weak Average Strong),
                message: "invalid"}


    ## This won't work :( 
    validates :power_id, uniqueness: true

    def name
        self.power.name
    end 
end
