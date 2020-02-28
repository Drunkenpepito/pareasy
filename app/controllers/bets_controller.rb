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
    @bet.user = current_user
    @bet.event = @event
    @bet_room = @event.bet_room
    if @bet.save
      @bet.user.amount_cents -= @bet.amount_cents
      redirect_to bet_room_path(@bet_room)
    else
      flash[:alert] = 'It seems you have already bet on this one...'
      redirect_to bet_room_path(@bet_room)
    end
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
    strong_params[:amount_cents] = strong_params[:amount_cents].to_i * 100
    strong_params
  end
end

