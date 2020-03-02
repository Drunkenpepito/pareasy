class FetchEventResultsService
  def initialize(event)
    @event = event



    end

  def call
    # appeler l'api
    url = "https://www.thesportsdb.com/api/v1/json/1/lookupevent.php?id=#{event_id}"
    # verifier le intHomeScore et intAwayScore
    if result = intHomeScore

    # determiner si results doit etre true ou false
  if intHomeScore = true
  if intAwayScore = true
  else false

    # enregistrer le results dans l'event


  end
end

# TESTER
# rails c puis dedans faire :

# event = Event.last
# event = Event.find(XXXX)

# FetchEventResultsService.new(event).call

