class HeroinePower < ApplicationRecord
    belongs_to :heroine 
    belongs_to :power

    #validate(:strength_validation)

    # def strength_validation
    #     if self.strength != 'Strong' || 'Weak' || 'Average'
    #         self.errors.add(:strength, "Strenth must be 'Strong', 'Weak', or 'Average'")
    #     end
    # end 
end
