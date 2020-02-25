class EventsController < ApplicationController

  def sport
    @bet_room = BetRoom.find(params[:bet_room_id])
    @event = Event.new
    authorize @event
  end

  def game
    raise
    @event = Event.new(params[:sport])
  end

  def description
    @event = Event.new(params[:game])
  end

  def create
  end

end
