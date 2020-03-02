class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :bet_room
end
