class EventsController < ApplicationController

  def new_sport
    @bet_room = BetRoom.find(params[:bet_room_id])
    @event = Event.new
    authorize @event
  end

  def create_sport
    @event = Event.new(event_params)
    @bet_room = BetRoom.find(params[:bet_room_id])
    @event.bet_room = @bet_room
    @event.author = current_user
    authorize @event

    if @event.save
      redirect_to edit_game_event_path(@event)
    else
      render :new_sport
    end
  end

  def edit_game
    @event = Event.find(params[:id])
    authorize @event
  end

  def update_game
    # raise
    @event = Event.find(params[:id])
    authorize @event
    @event.game = params[:event][:game]
    if @event.save
      redirect_to edit_description_event_path(@event)
    else
      render :edit_game
    end
  end

  def edit_description
    @event = Event.find(params[:id])
    authorize @event
  end

  def update_description
    @event = Event.find(params[:id])
    authorize @event
    @event.description = params[:event][:description]
    if @event.save
      redirect_to event_path(@event)
    else
      render :edit_description
    end
  end

  def update_results
    @event = Event.find(params[:id])
    authorize @event
    @event.description = params[:event][:description]
    if @event.save
      redirect_to event_path(@event)
    else
      render :edit_description
    end
  end

  def show
    @event = Event.find(params[:id])
    @bet = Bet.new
    authorize @event
  end

  def index
    @bet_room = BetRoom.find(params[:bet_room_id])
    @events = policy_scope(Event).where(bet_room: @bet_room, results: nil, author_id: current_user.id)
  end

  def close
    @event = Event.find(params[:id])
    @event.update(results: params[:results])
    authorize @event
    @bets = Bet.where("event_id=?",params[:id])

    player = 0
    winner_count = 0
    sum_bets_amount = 0

    @bets.each do |bet|
      sum_bets_amount += bet.amount_cents.to_i
      player += 1

      if bet.result == @event.results
        winner_count += 1
      end
    end

    if winner_count == 0
      price_per_winner = (sum_bets_amount*100) / player
    else
      price_per_winner = (sum_bets_amount*100) / winner_count
    end
    @bets.each do |bet|
      if bet.result == @event.results
        user = User.find(bet.user_id)
        if user.amount_cents.nil?
          user.amount_cents = 0
        end
        user.amount_cents += price_per_winner
        user.save
      end

    end

    redirect_to bet_room_events_path(@event.bet_room)
  end

  private

  def event_params
    params.require(:event).permit(:sport, :game, :description)

  end

  def gamers(event_id)
    @gamers = Bet.all.where(event_id: event_id)
  end

end

