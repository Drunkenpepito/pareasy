class BetRoomsController < ApplicationController
  def index
    @bet_rooms = policy_scope(Bet_room)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
