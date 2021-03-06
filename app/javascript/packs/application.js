// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
import "bootstrap";
import "../component/card.js";
import { displayNumberOfFriends } from "../component/display_number_of_friends";
import { chatroomScroll } from "../component/chatroom_scroll";
import Swal from 'sweetalert2';


const confirmationMessage = () => {

  const elementsClicked = document.querySelectorAll(".list-description-bet")

  elementsClicked.forEach((element) => {
    element.addEventListener("click", () => {
      localStorage.betCreate = "yes"
    })
  })


  const element = document.querySelector("#confirm-banner")

  if (element && localStorage.betCreate === "yes") {
      localStorage.betCreate = "no"
      Swal.fire({
      position: 'top-end',
      icon: 'success',
      title: 'Pari validé !',
      showConfirmButton: false,
      timer: 2000
      })
    }
}

document.addEventListener('turbolinks:load', () => {
  displayNumberOfFriends();
  chatroomScroll();
  confirmationMessage();
});



