
const cards = document.querySelectorAll('.card-category-sport')

cards.forEach((card) => {
  card.addEventListener('click', (event) => {
    const hiddenInput = document.querySelector('#event_sport')
    const sportValue = event.currentTarget.dataset.event
    hiddenInput.value = sportValue

    document.querySelector('#new_event').submit()
  })
})

const lists = document.querySelectorAll('.list-game')

lists.forEach((list) => {
  list.addEventListener('click', (event) => {
    const hiddenInput = document.querySelector('#event_game')
    const gameValue = event.currentTarget.dataset.event
    hiddenInput.value = gameValue

    document.querySelector('#edit_game').submit()
  })
})

const descriptions = document.querySelectorAll('.list-description')

descriptions.forEach((description) => {
  description.addEventListener('click', (event) => {
    const hiddenInput = document.querySelector('#event_description')
    const descriptionValue = event.currentTarget.dataset.event
    hiddenInput.value = descriptionValue

    document.querySelector('#edit_description').submit()
  })
})

