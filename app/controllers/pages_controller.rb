class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [  ]

  def home
  end

  def profile
    @my_bets = current_user.bets
    @gain_des_paris = []
    @gain_total = 0
    @pertes_total = 0


    @my_bets.each do |bet|
      gain = 0

      if bet.result == bet.event.results
        if bet.event.bets.where(winner: true).count != 0
          gain = (bet.amount_cents * bet.event.users.count / bet.event.bets.where(winner: true).count) - bet.amount_cents
          @gain_total += gain
        else
          gain = 0
        end
      else
        gain = -bet.amount_cents
        @pertes_total += bet.amount_cents
      end

      @gain_des_paris << {bet: bet ,event:bet.event , gain: gain}
    end

  end

  def update_amount_user
    versement_cents = params[:user][:amount_cents].to_i * 100
    current_user.amount_cents += versement_cents
    current_user.save
    redirect_to profile_path
  end

end
