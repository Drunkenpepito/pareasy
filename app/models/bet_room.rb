class BetRoom < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :users, through: :participations
  validates :name, presence: true
  has_one_attached :photo
end
