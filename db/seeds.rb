# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning Users, Participations, Events and Bets database...'
User.destroy_all
BetRoom.destroy_all
Participation.destroy_all
Event.destroy_all
Bet.destroy_all

puts 'Creating users'

pierre = User.create!(email: "pierre@pareasy.com", password: "password", username: "Drukenpepito", phone_number: "0756789867")
edouard = User.create!(email: "edouard@pareasy.com", password: "password", username: "Doud", phone_number: "0755678976")
benjamin = User.create!(email: "benjamin@pareasy.com", password: "password", username: "Ben", phone_number: "0687567843")
xavier = User.create!(email: "xavier@pareasy.com", password: "password", username: "Xav", phone_number: "0750239807")
jean = User.create!(email: "jean@pareasy.com", password: "password", username: "janno", phone_number: "0750230417")
paul = User.create!(email: "paul@pareasy.com", password: "password", username: "Polo", phone_number: "0750239075")
marie = User.create!(email: "marie@pareasy.com", password: "password", username: "mary", phone_number: "0750231285")
hugues = User.create!(email: "hugues@pareasy.com", password: "password", username: "Xav", phone_number: "0750230376")
tom = User.create!(email: "tom@pareasy.com", password: "password", username: "Tom", phone_number: "0750234321")
pauline = User.create!(email: "pauline@pareasy.com", password: "password", username: "Line", phone_number: "0750235324")
diane = User.create!(email: "diane@pareasy.com", password: "password", username: "Didi", phone_number: "0750230980")
astrid = User.create!(email: "astrid@pareasy.com", password: "password", username: "Astr", phone_number: "0750237327")
elena = User.create!(email: "elena@pareasy.com", password: "password", username: "Ele", phone_number: "0750230953")
augustin = User.create!(email: "augustin@pareasy.com", password: "password", username: "Gus", phone_number: "0750236316")
alexandre = User.create!(email: "alexandre@pareasy.com", password: "password", username: "Alex", phone_number: "0750289067")
guillaume = User.create!(email: "guillaume@pareasy.com", password: "password", username: "Gui", phone_number: "075023758")
florent = User.create!(email: "florent@pareasy.com", password: "password", username: "Floflo", phone_number: "0750239847")
nicolas = User.create!(email: "nicolas@pareasy.com", password: "password", username: "Nico", phone_number: "0750232345")
laure = User.create!(email: "laure@pareasy.com", password: "password", username: "Lolo", phone_number: "0750239507")
amalia = User.create!(email: "amalia@pareasy.com", password: "password", username: "Ama", phone_number: "0750236789")

puts "Creating bet rooms"
bet_room = BetRoom.new(name: "Paris entre copains")
# URI.open("https://image.shutterstock.com/image-photo/four-friends-taking-selfie-together-260nw-641463781.jpg")
bet_room.save!

puts "Creating participation"
participation_1 = Participation.new(bet_room: bet_room, user: edouard)
participation_1.save!
participation_2 = Participation.new(bet_room: bet_room, user: xavier)
participation_2.save!
participation_3 = Participation.new(bet_room: bet_room, user: pierre)
participation_3.save!
participation_4 = Participation.new(bet_room: bet_room, user: benjamin)
participation_4.save!


puts 'Creating events'

  pm_32 = Event.new(
    sport: "Football",
    game: "Paris vs Marseille",
    description: "But à la 32ème",
    game_start_at: DateTime.new(2020,10,12,20,45,00),
    bet_room: bet_room)
  pm_32.save!

  fa_3_0 = Event.new(
    sport: "Football",
    game: "France vs Allemagne",
    description: "3-0",
    game_start_at: DateTime.new(2020,5,4,20,45,00),
    bet_room: bet_room)
  fa_3_0.save!

  fn_psf = Event.new(
    sport: "Tennis",
    game: "Federer vs Nadal",
    description: "premier set Federer",
    game_start_at: DateTime.new(2020,4,4,14,30,00),
    bet_room: bet_room)
  fn_psf.save!

  fa_bo = Event.new(
    sport: "Rugby",
    game: "France vs Angleterre",
    description: "Bonus offensif France",
    game_start_at: DateTime.new(2020,3,11,14,30,00),
    bet_room: bet_room)
  fa_bo.save!

  f1_f = Event.new(
    sport: "F1",
    game: "Grand Tour Monaco",
    description: "Victoire Ferarri",
    game_start_at: DateTime.new(2020,9,7,15,00,00),
    bet_room: bet_room)
  f1_f.save!


puts 'Creating bets'

paris_marseille = Bet.new(amount_cents: "4", result: true, event: pm_32, user: edouard)
paris_marseille.save!
france_allemagne = Bet.new(amount_cents: "5", result: true, event: fa_3_0, user: xavier)
france_allemagne.save!
federer_nadal = Bet.new(amount_cents: "3", result: false, event: fn_psf, user: benjamin)
federer_nadal.save!
france_angleterre = Bet.new(amount_cents: "0", result: true, event: fa_bo, user: pierre)
france_angleterre.save!
gpm = Bet.new(amount_cents: "2", result: false, event: f1_f, user: edouard)
gpm.save!
