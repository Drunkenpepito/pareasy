class Event < ApplicationRecord
  has_many :bets
  belongs_to :bet_room
end
