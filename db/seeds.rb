# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning Users, Participations, Events and Bets database...'
Bet.destroy_all
Participation.destroy_all
User.destroy_all
Event.destroy_all

puts 'Creating users...'

pierre = User.create!(email: "pierre@pareasy.com", password: "password", username: "Drukenpepito")
edouard = User.create!(email: "edouard@pareasy.com", password: "password", username: "Doud")
benjamin = User.create!(email: "benjamin@pareasy.com", password: "password", username: "Ben")
xavier = User.create!(email: "xavier@pareasy.com", password: "password", username: "Xav")

puts 'Creating events'

pm_32 = Event.new(
  sport: "Football",
  game: "Paris vs Marseille",
  description: "But à la 32ème"
  game_start: DateTime.new(2020,03,25,20,45)
)

  fa_3_0 = Event.new
  sport: "Football",
  game: "France vs Allemagne",
  description: "3-0"
  game_start: DateTime.new(2020,05,25,20,45)

  fn_psf = Event.new
  sport: "Tennis",
  game: "Federer vs Nadal",
  description: "premier set Federer"
  game_start: DateTime.new(2020,04,25,14,30)

  fa_bo = Event.new
  sport: "Rugby",
  game: "France vs Angleterre",
  description: "Bonus offensif France"
  game_start: DateTime.new(2020,03,15,14,30)

  f1_f = Event.new
  sport: "F1",
  game: "Grand tour Monaco",
  description: "Victoire Ferarri"
  game_start: DateTime.new(2020,09,15,15,00)




puts 'Creating bets...'

paris_marseille = Bet.new( amount: "4", result: true, event: pm_32, user: edouard)
paris_marseille.save!
france_allemagne = Bet.new(amount: "5" result: true, event: fa_3_0, user: xavier)
france_allemagne.save!
federer_nadal = Bet.new (amount: "3" result: false, event: fn_psf, user: benjamin)
federer_nadal.save!
france_angleterre = Bet.new (amount: "0" result: false, event: fa_bo, user: pierre)
france_angleterre.save!
gpm = Bet.new (amount: "2" result: false, event: f1_f, user: edouard)
gpm.save!



puts "Creating participation"
admin_1 = Admin.new (bet_room_id: pm_32.id, user_id: edouard.id,)
admin.save!
admin_2 = Admin.new (bet_room_id: fa_3_0.id, user_id: xavier.id,)
admin.save!
admin_3 = Admin.new (bet_room_id: fn_psf.id, user_id: xavier.id,)
admin.save!
admin_4 = Admin.new (bet_room_id: fa_bo.id, user_id: pierre.id,)
admin.save!
admin_4 = Admin.new (bet_room_id: f1_f.id, user_id: benjamin.id,)
admin.save!
