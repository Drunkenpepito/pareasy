class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [  ]

  def home
  end

  def profile
    @my_bets = current_user.bets
    @gains = 0
    @pertes = 0
  end

  def update_amount_user
    versement_cents = params[:user][:amount_cents].to_i * 100
    current_user.amount_cents += versement_cents
    current_user.save
    redirect_to profile_path
  end

end
