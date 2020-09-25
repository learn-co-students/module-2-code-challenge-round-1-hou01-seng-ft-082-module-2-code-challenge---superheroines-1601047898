class Power < ApplicationRecord
    has_many :heroineassociations
    has_many :heroines, through: :heroineassociations
end
