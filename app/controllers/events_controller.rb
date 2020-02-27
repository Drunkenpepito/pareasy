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
    if @event.save!
      redirect_to event_path(@event)
    else
      render :edit_description
    end
  end

  def update_results
    @event = Event.find(params[:id])
    authorize @event
    @event.description = params[:event][:description]
    if @event.save!
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

