class BetRoomsController < ApplicationController
  def index
    @bet_rooms = policy_scope(BetRoom)
  end

  def show
    @bet_room = BetRoom.find(params[:id])
    authorize @bet_room
  end

  def new
    @bet_room = BetRoom.new
    authorize @bet_room

  end

  def create
    @bet_room = BetRoom.new(bet_room_params)
    # @star.user = current_user
    authorize @bet_room
    if @bet_room.save
      redirect_to bet_room_path(@bet_room)
    else
      render :new
    end
  end

  private

  def bet_room_params
    params.require(:bet_room).permit(:name, :photo)
  end

end
