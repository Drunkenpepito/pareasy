class BetRoom < ApplicationRecord
  has_many :participations
  has_many :events
end
