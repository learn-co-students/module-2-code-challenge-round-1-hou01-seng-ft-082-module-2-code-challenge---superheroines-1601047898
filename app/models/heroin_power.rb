class HeroinPower < ApplicationRecord
    belongs_to :power
    belongs_to :heroine
    validates(:strength, {presence: true, uniqueness: true acceptance: accept: ['Strong','Weak','Average' }})
end
