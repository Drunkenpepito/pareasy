class User < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :bet_rooms, through: :participations
  has_many :bets, dependent: :destroy
  has_many :events, through: :bets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
