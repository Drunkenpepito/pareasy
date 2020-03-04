
import consumer from "./consumer";
import { chatroomScroll } from "../component/chatroom_scroll";

const messagesContainer = document.getElementById('messages');
if (messagesContainer) {
  const id = messagesContainer.dataset.betroomId;
  consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
    received(data) {
      document.getElementById('messages').insertAdjacentHTML('beforeend', data);
      chatroomScroll();
    }
  });
}
