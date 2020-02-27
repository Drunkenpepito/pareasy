class BetRoomsController < ApplicationController
  def index
    @bet_rooms = policy_scope(BetRoom)
  end

  def show
    @bet_room = BetRoom.find(params[:id])
    authorize @bet_room
    @events = @bet_room.events
  end

  def new
    @bet_room = BetRoom.new
    @users = User.where.not(id: current_user.id)
    authorize @bet_room

  end

  def create
    @bet_room = BetRoom.new(bet_room_params)
    # @bet_room.users.push(current_user)
    authorize @bet_room
    if @bet_room.save
      # Cloudinary::Uploader.upload(params[:photo])
      redirect_to bet_room_path(@bet_room)
    else
      render :new
    end
  end


  def edit
    @bet_room = BetRoom.find(params[:id])
    authorize @bet_room
  end

  def update
    @bet_room = BetRoom.find(params[:id])
    authorize @bet_room
    @bet_room.update(bet_room_params)
    redirect_to bet_room_path(@bet_room)
  end

  def destroy
    @bet_room = BetRoom.find(params[:id])
    authorize @bet_room
    @bet_room.destroy
    redirect_to root_path
  end

  private

  def bet_room_params
    params.require(:bet_room).permit(:name, :photo, :user)
  end

end
