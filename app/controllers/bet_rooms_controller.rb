class BetRoomsController < ApplicationController
  def index
    @bet_rooms = policy_scope(BetRoom)
  end

  def show
    @bet_room = BetRoom.find(params[:id])
    authorize @bet_room
  end


end
