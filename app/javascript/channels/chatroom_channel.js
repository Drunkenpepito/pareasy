
import consumer from "./consumer";
import { chatroomScroll } from "../component/chatroom_scroll";

const messagesContainer = document.getElementById('messages');
const chatroomLayout = document.querySelector(".chatroom-layout")
if (messagesContainer && chatroomLayout) {
  const currentUserId = chatroomLayout.dataset.userId;
  const id = messagesContainer.dataset.betroomId;
  consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
    received(data) {
      if (data.user != currentUserId) {
        document.getElementById('messages').insertAdjacentHTML('beforeend', data.partial);
        chatroomScroll();
      }
    }
  });
}
