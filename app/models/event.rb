class Event < ApplicationRecord
  has_many :bets, dependent: :destroy
  has_many :users, through: :bets
  belongs_to :bet_room
end
