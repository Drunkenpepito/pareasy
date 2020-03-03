class User < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :bet_rooms, through: :participations
  has_many :bets, dependent: :destroy
  has_many :events, through: :bets
  has_many :events_as_author, class_name: "Event", foreign_key: :author_id, source: :author
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true
  has_many :messages, dependent: :destroy
end
