
const cards = document.querySelectorAll('.card-category-sport')

cards.forEach((card) => {
  card.addEventListener('click', (event) => {
    const hiddenInput = document.querySelector('#event_sport')
    const sportValue = event.currentTarget.dataset.event
    hiddenInput.value = sportValue

    document.querySelector('#new_event').submit()
  })
})


