class Event < ApplicationRecord
  has_many :bets, dependent: :destroy
  has_many :users, through: :bets
  belongs_to :bet_room
  belongs_to :author, class_name: "User"

  attr_accessor :home_team_score, :away_team_score

  scope :upcoming, -> { where(results: nil) }

  def user_bet_on_it
    count = 0
      unless @event.nil? || @event.bets.nil? || @event.bets.first.nil? || @event.bets.first.amount_cents == 0 || @event.bets.where(user_id: current_user).empty?
        if @event.results.nil?
          count += 1
          return @event
        end
      end
  end

  def proposed_by_other
    count = 0
      unless @event.nil? || @event.bets.nil? || @event.bets.first.nil? || @event.bets.first.amount_cents == 0
        if @event.results.nil? && @event.bets.where(user_id: current_user.id).empty?
          count += 1
          return @event
        end
      end
  end

  def winners
    self.bets.select(&:winner).map(&:user)
  end
end
