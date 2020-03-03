class MoneyDispatch
def initialize(event)
  @event = event
end

  def call

    bets = @event.bets
    player = @event.bets.count
    sum_bets_amount = bets.sum(:amount_cents)

    bets.each do |bet|
      # sum_bets_amount += bet.amount_cents.to_i
      # player += 1
      bet.update(winner: true) if bet.result == @event.results
        # winner_count += 1
      #   bet.winner = true
      #   bet.save
      # end
    end
    winner_count = @event.bets.where(winner: true).count

    if winner_count == 0
      price_per_winner = (sum_bets_amount*100) / player
      bets.each do |bet|
        bet.user.update(amount_cents: bet.user.amount_cents.to_i + price_per_winner)
        # user = bet.user #User.find(bet.user_id)
        # # if user.amount_cents.nil?
        # #   user.amount_cents = 0
        # # end
        # user.amount_cents.to_i += price_per_winner
        # user.save
      end
    else
      price_per_winner = (sum_bets_amount*100) / winner_count
      bets.each do |bet|
        if bet.winner
          bet.user.update(amount_cents: bet.user.amount_cents.to_i + price_per_winner)
        end
        # if bet.result == @event.results
        #   user = bet.user #User.find(bet.user_id)
        #   # if user.amount_cents.nil?
        #   #   user.amount_cents = 0
        #   # end
        #   user.amount_cents.to_i += price_per_winner
        #   user.save
        # end
      end
    end

  end
end
