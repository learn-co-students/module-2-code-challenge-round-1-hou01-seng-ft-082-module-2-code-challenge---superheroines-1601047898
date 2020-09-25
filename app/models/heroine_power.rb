class HeroinePower < ApplicationRecord
    belongs_to :heroine
    belongs_to :power

    validates :strength, inclusion: { in: %w(Strong Weak Average)}
    validates :power_id, uniqueness: true
end
