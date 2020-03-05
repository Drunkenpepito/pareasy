class ChatroomsController < ApplicationController


  def show
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
    @message = Message.new
    @bet_room = @chatroom.bet_room
  end
end
