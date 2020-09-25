class HeroinePower < ApplicationRecord
    belongs_to :heroine
    belongs_to :power
    # validates :power_id, uniqueness: true
    validates :strength, presence: true, inclusion: {in: %w(Weak weak Strong strong Average average), message: "%{value} is not a valid choice. Try strong, weak, or average."}

end
