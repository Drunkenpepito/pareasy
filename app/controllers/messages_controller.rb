class MessagesController < ApplicationController


  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    authorize @message
    @message.chatroom = @chatroom
    @message.user = current_user

    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        partial: render_to_string(partial: "message", locals: { message: @message, cable: true }),
        user: current_user.id
      )

      redirect_to chatroom_path(@chatroom)
    else
      render "chatrooms/show"
    end
    # render "chatrooms/show", turbolinks: false
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
