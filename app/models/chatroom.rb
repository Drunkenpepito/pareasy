class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :bet_room
end
