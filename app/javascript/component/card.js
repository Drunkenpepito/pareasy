const cards = document.querySelectorAll('.card-category-sport');

cards.forEach((card) => {
  card.addEventListener('click', (event) => {
    const hiddenInput = document.querySelector('#event_sport');
    const sportValue = event.currentTarget.dataset.event;
    hiddenInput.value = sportValue;

    document.querySelector('#new_event').submit()
  })
})

const fields = document.querySelectorAll('.list-league');

fields.forEach((field) => {
  field.addEventListener('click', (event) => {
    const hiddenInput = document.querySelector('#event_thesportdb_league_id');
    const leagueValue = event.currentTarget.dataset.event;
    hiddenInput.value = leagueValue;

    document.querySelector('#edit_league').submit();
  })
})

const lists = document.querySelectorAll('.list-game');

lists.forEach((list) => {
  list.addEventListener('click', (event) => {
    const hiddenInputName = document.querySelector('#event_game');
    const gameValue = event.currentTarget.dataset.event;
    hiddenInputName.value = gameValue;

    const hiddenInputId = document.querySelector('#event_thesportdb_event_id');
    const gameId = event.currentTarget.dataset.thesportdbEventId;
    hiddenInputId.value = gameId;

    document.querySelector('#edit_game').submit();
  })
})

const descriptions = document.querySelectorAll('.list-description');
descriptions.forEach((description) => {
  description.addEventListener('click', (event) => {

    // const hiddenInput = description.closest("form").querySelector('#event_description');
    const hiddenInput = document.querySelector('#event_description');
    console.log(hiddenInput);
    const descriptionValue = event.currentTarget.dataset.event;
    hiddenInput.value = descriptionValue;
    console.log(description.closest("form"));

    description.closest("form").submit();

    document.querySelector('#edit_description').submit();
  })
})

const goals = document.querySelectorAll('.list-description-goal');
goals.forEach((goal) => {
  goal.addEventListener('click', (event) => {
    // const hiddenInput = description.closest("form").querySelector('#event_description');
    const hiddenInput = document.querySelector('.coucoulechat');
    const goalValue = event.currentTarget.dataset.event;
    hiddenInput.value = goalValue;


    document.querySelector('#edit_description_goal').submit();
  })
})

const arbitres = document.querySelectorAll('.card-result');

arbitres.forEach((arbitre) => {
  arbitre.addEventListener('click', (event) => {
    const hiddenInput = document.querySelector('#event_results');
    const arbitreValue = event.currentTarget.dataset.event;
    hiddenInput.value = arbitreValue;

    document.querySelector('#edit_results').submit();
  })
})

const moneys = document.querySelectorAll('.list-description-bet');

moneys.forEach((money) => {
  money.addEventListener('click', (event) => {
    const hiddenInput = document.querySelector('#bet_amount_cents');
    const moneyValue = event.currentTarget.dataset.event;
    hiddenInput.value = moneyValue;

    document.querySelector('#new_bet').submit();
  })
})



