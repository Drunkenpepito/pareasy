class BetRoom < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :users, through: :participations
  validates :name, presence: true
  has_one_attached :photo
  has_one :chatroom, dependent: :destroy

  def pending_events(user)
    self.events.where(results: nil).reject { |e| e.users.include?(user) }.count
  end
end
