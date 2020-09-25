class HeroinePower < ApplicationRecord
    has_many :powers
    belongs_to :heroine
    
    validates :strength, uniqueness: true
end
