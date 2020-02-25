class EventsController < ApplicationController

  def sport
    @event.game = Event.new(params[:sport])
  end

  def game
    @event.game = Event.new(params[:game])
  end

  def description
    @event.description = Event.new(params[:description])
  end

  def create

  end

end
