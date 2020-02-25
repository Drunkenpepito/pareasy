class Bet < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :amount_cents, presence: true

end
