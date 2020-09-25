class HeroinePower < ApplicationRecord
    belongs_to :heroine 
    belongs_to :power

    validates :strength, acceptance: { accept: 'Strong', accept: 'Weak', accept: 'Average'}
end
