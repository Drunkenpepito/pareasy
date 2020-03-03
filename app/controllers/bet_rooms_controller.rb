class BetRoomsController < ApplicationController
  def index
    @bet_rooms = policy_scope(BetRoom)
  end

  def friends
    @bet_room = BetRoom.find(params[:id])
    skip_authorization
  end

  def update_friends
    raise
    @bet_room = BetRoom.find(params[:id])
    authorize @bet_room
    # @bet_room.update(bet_room_params2)

    params[:bet_room][:user_ids].each do |user_id|
      unless Participation.find_by(bet_room: @bet_room, user_id: user_id)
        Participation.create(user_id: user_id, bet_room: @bet_room)
      end
    end
    redirect_to bet_room_path(@bet_room)
  end

  def show
    @bet_room = BetRoom.find(params[:id])
    authorize @bet_room
    @events = @bet_room.events

    # fetch results
    @events.each do |event|
      next unless event.results.nil?

      FetchEventResultsService.new(event).call
    end
  end

  def new

    @bet_room = BetRoom.new
    @users = User.where.not(id: current_user.id).sort_by(&:username)
    authorize @bet_room
  end

  def create

    @bet_room = BetRoom.new(bet_room_params)


    # @bet_room.users.push(current_user)
    authorize @bet_room
    if @bet_room.save
      Chatroom.create!(bet_room: @bet_room)
      params[:bet_room][:user_ids].each do |user_id|
        Participation.create(user_id: user_id, bet_room: @bet_room)
      end

      Participation.create(user: current_user, bet_room: @bet_room, admin: true)
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
    if params[:bet_room][:user_ids]

      params[:bet_room][:user_ids].each do |user_id|
        unless Participation.find_by(bet_room: @bet_room, user_id: user_id)
          Participation.create(user_id: user_id, bet_room: @bet_room)
        end
      end

    end
    redirect_to bet_room_path(@bet_room)
  end

  def destroy
    @bet_room = BetRoom.find(params[:id])
    authorize @bet_room
    @bet_room.destroy
    redirect_to root_path
  end

  def play(event, answer)
    @bet= Bet.new(result:answer, amount_cents:even.bets.first.amount_cents)
    @bet.user = current_user
    @bet.event = event
    return @bet
  end

  def stat
    @bet_room = BetRoom.find(params[:bet_room_id])
    authorize @bet_room
    @events = @bet_room.events.where(finish: true)
    @users= @bet_room.users
  end

  private

  def bet_room_params
    params.require(:bet_room).permit(:name, :photo, :user)
  end
end
