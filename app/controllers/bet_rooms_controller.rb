class BetRoomsController < ApplicationController
  def index
    @bet_rooms = policy_scope(BetRoom)

  end

  def show
  end


end
