class Power < ApplicationRecord
    has_and_belongs_to_many :heroines, through: :heroine_power
end
