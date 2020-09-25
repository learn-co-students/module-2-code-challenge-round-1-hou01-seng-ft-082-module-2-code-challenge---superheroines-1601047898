class HeroinePower < ApplicationRecord
  belongs_to :heroine
  belongs_to :power

  validates :strength, inclusion: { in: %w(Strong Weak Average), message: "%{value} is not a valid strength" }
  validates_uniqueness_of :heroine_id, scope: :power_id

end
