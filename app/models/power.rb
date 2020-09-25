class Power < ApplicationRecord
    has_many :heroine_powers
    has_many :heroines, through: :heroine_powers

    def power_strength
        self.heroine_powers[0].strength
    end

end
