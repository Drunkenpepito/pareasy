class Bet < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :amount_cents, presence: true
  validates :user_id, uniqueness: { scope: :event_id,
    message: "You can bet only one time on this event" }

  def winner
    raise
  end
end
