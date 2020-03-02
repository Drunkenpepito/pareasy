
const cards = document.querySelectorAll('.card-category-sport')

cards.forEach((card) => {
  card.addEventListener('click', (event) => {
    const hiddenInput = document.querySelector('#event_sport')
    const sportValue = event.currentTarget.dataset.event
    hiddenInput.value = sportValue

    document.querySelector('#new_event').submit()
  })
})

const fields = document.querySelectorAll('.list-league')

fields.forEach((field) => {
  field.addEventListener('click', (event) => {
    const hiddenInput = document.querySelector('#event_league')
    const leagueValue = event.currentTarget.dataset.event
    hiddenInput.value = leagueValue

    document.querySelector('#edit_league').submit()
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

const arbitres = document.querySelectorAll('.card-result')

arbitres.forEach((arbitre) => {
  arbitre.addEventListener('click', (event) => {
    const hiddenInput = document.querySelector('#event_results')
    const arbitreValue = event.currentTarget.dataset.event
    hiddenInput.value = arbitreValue

    document.querySelector('#edit_results').submit()
  })
})


