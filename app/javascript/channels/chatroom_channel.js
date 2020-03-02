
import consumer from "./consumer";

const messagesContainer = document.getElementById('messages');
if (messagesContainer) {
  const id = messagesContainer.dataset.betroomId;
  console.log('connected')
  consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
    received(data) {
      console.log(data);
      console.log(messagesContainer);

      document.getElementById('messages').insertAdjacentHTML('afterbegin', data);
    }
  });
}
