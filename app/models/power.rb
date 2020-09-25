class Power < ApplicationRecord
    has_many  :heroinepowers
    belongs_to :heroine, through: :heroinepowers
end
