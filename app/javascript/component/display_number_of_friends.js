const displayNumberOfFriends = () => {
  const friendsCheckBoxes = document.querySelectorAll('.friends-input input')

  friendsCheckBoxes.forEach((checkbox) => {
    checkbox.addEventListener('change', (e) => {
      const counter = document.querySelector("#friends-counter")
      const checkedInputs = document.querySelectorAll('.friends-input input:checked')
      counter.innerHTML = checkedInputs.length;
      console.log(checkedInputs.length);
    })
  })

}

export { displayNumberOfFriends };
