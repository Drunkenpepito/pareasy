require 'open-uri'
require 'json'

class FetchEventResultsService
  def initialize(event)
    @event = event
  end

  def call
    # appeler l'api
    url = "https://www.thesportsdb.com/api/v1/json/1/lookupevent.php?id=#{@event.thesportdb_event_id}"

    api_event_serialized = open(url).read
    api_event = JSON.parse(api_event_serialized)["events"][0]

    # verifier le intHomeScore et intAwayScore
    home_score = api_event["intHomeScore"] # 0
    away_score = api_event["intAwayScore"] # 2

    # guard clause: sortir si au moins un deux scores est nill
    return if home_score.nil? || away_score.nil?

    scores = "#{home_score} - #{away_score}" # "0 - 2"
    # determiner si results doit etre true ou false
    # @event.results = scores == @event.description
    @event.update(
      results: scores == @event.description
    )

    # enregistrer le results dans l'event
    # @event.save!
  end
end

# TESTER
# rails c puis dedans faire:

# event = Event.last
# event = Event.find(XXXX)

# FetchEventResultsService.new(event).call

