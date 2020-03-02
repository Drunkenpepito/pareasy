require 'json'
require 'open-uri'

class ParseEventService
  def initialize(event)
    @event = event
  end

  def call
    url = "https://www.thesportsdb.com/api/v1/json/1/eventsnextleague.php?id=#{@event.thesportdb_league_id}"
    events_serialized = open(url).read
    events = JSON.parse(events_serialized)["events"]

    return events.map do |event|
      {
        id:   event["idEvent"],
        name: event["strEvent"]
      }
    end
  end

  # def call
  #   # appeler l'api
  #   url = "https://www.thesportsdb.com/api/v1/json/1/all_leagues.php"

  #   league_serialized = open(url).read
  #   league = JSON.parse(league_serialized)

  #   league["leagues"].each do |league|
  #     league["strLeague"]
  #   end

  # end
end

# TESTER
# rails c puis dedans faire :

# event = Event.last
# event = Event.find(XXXX)

# ParseEventService.new(event).call

# ["events"][0]
