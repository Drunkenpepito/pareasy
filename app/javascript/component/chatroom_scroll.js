// import consumer from "./consumer";


// TODO
// faire un nouveau component avec une fonction pour scroller dans la chatroom
// dans la fonction,
//   faire un querySelector qui trouve la chatroom
//   si chatroom presente
//     scroller jusque en bas (scroll sur l'input en mode smooth)

const chatroomScroll = () => {

  const messagesContainer = document.getElementById('messages');
  const messages = document.querySelectorAll(".message-container");
  const lastMessage = messages[messages.length - 1];
  if (messagesContainer && lastMessage) {
    console.log('coucou');
    messagesContainer.scrollTop = lastMessage.offsetTop
  }
}


export { chatroomScroll };
