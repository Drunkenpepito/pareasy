class BetsController < ApplicationController

  def index
    @bets = policy_scope(BET)
  end

  def show
  end

  def new
    @event = Event.find(params[:event_id])
    authorize @bet
    @bet = Bet.new
  end

  def create
    @event = Event.find(params[:event_id])
    @bet = Bet.new(bet_params)
    authorize @bet
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def bet_params
    strong_params = params.require(:bet).permit(:result, :amount_cents)
    strong_params[:amount_cents] = strong_params[:amount_cents] * 100
    strong_params
  end
end

