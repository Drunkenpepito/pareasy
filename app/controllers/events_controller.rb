class EventsController < ApplicationController

  def sport
    @bet_room = BetRoom.find(params[:bet_room_id])
    @event = Event.new
    authorize @event
  end

  def game
    @event = Event.new(event_params)
    @bet_room = BetRoom.find(params[:bet_room_id])
    @event.bet_room = @bet_room
    authorize @event
    if @event.save!
    else
      render :sport
    end

  end

  def description
    @event = Event.find(params[:event][:id])
    @event.game = params[:event][:game]
    @event.update(event_params)
    authorize @event
  end

  def update
    @bet_room = BetRoom.find(params[:bet_room_id])
    @event = Event.find(params[:event][:id])
    @event.bet_room = @bet_room
    @event.update(event_params)
    authorize @event
    if @event.save
      redirect_to bet_room_path(@bet_room)
    else
      raise
      render :description
    end
  end

  private

  def event_params
    params.require(:event).permit(:sport, :game, :description)
  end

end

