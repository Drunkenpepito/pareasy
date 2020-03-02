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
    # params[:bet][:result] != false ? @bet.result = true : @bet.result = false
    authorize @bet
    @bet.user = current_user
    @bet.event = @event
    @bet_room = @event.bet_room


    if @bet.user.amount_cents >= @bet.amount_cents*100
      if @bet.save
        @bet.user.amount_cents -= @bet.amount_cents*100
        @bet.user.save
        redirect_to bet_room_path(@bet_room)
      else
        flash[:alert] = 'Désolé, tu as déjà parié sur cet évenement'
        redirect_to bet_room_path(@bet_room)
      end
    else
      flash[:alert] = "t'as pas assez de thunes"
      redirect_to bet_room_path(@bet_room)
    end
  end

  def edit
  end

  def update


  end

  def destroy
  end

  def winner
    authorize @bet
    @bets = Bet.where("event_id=?",params[:id])
    raise
    # @bets = Bet.where("event_id=?",params[:id])
    # raise
  end

  private
  def bet_params
    strong_params = params.require(:bet).permit(:result, :amount_cents)
    # strong_params = params.permit(:result, :amount_cents)
    strong_params[:amount_cents] = strong_params[:amount_cents].to_i
    strong_params
  end
end

