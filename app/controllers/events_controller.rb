class EventsController < ApplicationController

  def sport
    @bet_room = BetRoom.find(params[:bet_room_id])
    @event = Event.new
    authorize @event
  end

  def game
    @bet_room = BetRoom.find(params[:bet_room_id])
    @event = Event.new(params[:sport])
    authorize @event
  end

  def description
    @bet_room = BetRoom.find(params[:bet_room_id])
    @event = Event.new(params[:game])
    authorize @event
  end

  def create
    @bet_room = BetRoom.find(params[:bet_room_id])
    @event = Event.new(params[:description])
    authorize @event
    if @event.save
      redirect_to root_path
    else
      raise
      render :sport
    end
  end

end
