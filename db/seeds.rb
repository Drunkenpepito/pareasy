# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning Users, Participations, Events and Bets database...'
Participation.destroy_all
Message.destroy_all
Chatroom.destroy_all
BetRoom.destroy_all
Bet.destroy_all
Event.destroy_all
User.destroy_all
User.all.each do |user|
  user.photo.purge
end

puts 'Creating users'

pierre = User.new(email: "pierre@pareasy.com", password: "password", username: "Furious", phone_number: "0756789867")
pierre_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582277933/ng08ly60kkw5n83hvjbe8tkcqlu3.jpg")
pierre.photo.attach(io: pierre_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
pierre.save!

edouard = User.new(email: "edouard@pareasy.fr", password: "123456", username: "Doud", phone_number: "0755678976")
edouard_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582296302/q72sbdb5uo1sr2v4xoxoni6122i3.png")
edouard.photo.attach(io: edouard_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
edouard.save!

benjamin = User.new(email: "benjamin@pareasy.com", password: "password", username: "Ben", phone_number: "0687567843")
benjamin_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582205730/992lpay48wtm5ko0b7jaioltv0w8.jpg")
benjamin.photo.attach(io: benjamin_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
benjamin.save!

xavier = User.new(email: "xavier@pareasy.com", password: "password", username: "Xav", phone_number: "0750239807")
xavier_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582300436/gwevl6pay069bpdmgtkmkqntc93w.png")
xavier.photo.attach(io: xavier_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
xavier.save!

marin = User.new(email: "marin@pareasy.com", password: "password", username: "rims", phone_number: "0750230417")
marin_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582293564/ewa4pskyx2n7hqe89lbct1lxlpoc.jpg")
marin.photo.attach(io: marin_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
marin.save!

paul = User.new(email: "paul@pareasy.com", password: "password", username: "Polo", phone_number: "0750239075")
paul_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582293559/smtpwi2ayollytr26703chw0jj1e.jpg")
paul.photo.attach(io: paul_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
paul.save!

marie = User.new(email: "marie@pareasy.com", password: "password", username: "mary", phone_number: "0750231285")
marie_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582292144/qtz0wdl2myqncrzbo025ww34mssc.jpg")
marie.photo.attach(io: marie_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
marie.save!

hugues = User.new(email: "hugues@pareasy.com", password: "password", username: "Hug", phone_number: "0750230376")
hugues_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582292557/8s46h1ofoo90riqymvm7mxyroox1.jpg")
hugues.photo.attach(io: hugues_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
hugues.save!

tom = User.new(email: "tom@pareasy.com", password: "password", username: "Tom", phone_number: "0750234321")
tom_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582292139/ralv5744s6sd39gdg73at2xzzize.jpg")
tom.photo.attach(io: tom_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
tom.save!

pauline = User.new(email: "pauline@pareasy.com", password: "password", username: "Line", phone_number: "0750235324")
pauline_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582292137/4ax44p9pos4efsvxaldm8fn2z0wd.jpg")
pauline.photo.attach(io: pauline_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
pauline.save!

diane = User.new(email: "diane@pareasy.com", password: "password", username: "Didi", phone_number: "0750230980")
diane_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582292128/zvuqtlwm3bwxzdybvmf48hd4fvmn.jpg")
diane.photo.attach(io: diane_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
diane.save!

astrid = User.new(email: "astrid@pareasy.com", password: "password", username: "Astr", phone_number: "0750237327")
astrid_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582292124/82zothqn67r9pzjupigmb4nfht6i.jpg")
astrid.photo.attach(io: astrid_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
astrid.save!

elena = User.new(email: "elena@pareasy.com", password: "password", username: "Ele", phone_number: "0750230953")
elena_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582278670/lvhuws7ut4yxah4vcglyp3x6h141.jpg")
elena.photo.attach(io: elena_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
elena.save!

francois = User.new(email: "francois@pareasy.com", password: "password", username: "Francky", phone_number: "0750236316")
francois_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582200323/idajo6cnh7mie2pojs6mihnv8wlc.jpg")
francois.photo.attach(io: francois_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
francois.save!

alexandre = User.new(email: "alexandre@pareasy.com", password: "password", username: "Alex", phone_number: "0750289067")
alexandre_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582278023/txxrvjaliv64ips5jfq7v8vud3u5.jpg")
alexandre.photo.attach(io: alexandre_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
alexandre.save!

guillaume = User.new(email: "guillaume@pareasy.com", password: "password", username: "Gui", phone_number: "075023758")
guillaume_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582277599/jx5ox6slxvmybtc34ojmfv72iiuq.jpg")
guillaume.photo.attach(io: guillaume_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
guillaume.save!

florent = User.new(email: "florent@pareasy.com", password: "password", username: "Floflo", phone_number: "0750239847")
florent_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582277009/u1g1t033ay8feqoaq8ih089oro56.jpg")
florent.photo.attach(io: florent_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
florent.save!

nicolas = User.new(email: "nicolas@pareasy.com", password: "password", username: "Nico", phone_number: "0750232345")
nicolas_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582277094/wpy2t458up9ly3qk6mfcnlutvdn3.jpg")
nicolas.photo.attach(io: nicolas_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
nicolas.save!

laure = User.new(email: "laure@pareasy.com", password: "password", username: "Lolo", phone_number: "0750239507")
laure_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582277083/uoy6qqwhtcoxv8jqql4mvvbylfk2.jpg")
laure.photo.attach(io: laure_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
laure.save!

amalia = User.new(email: "amalia@pareasy.com", password: "password", username: "Ama", phone_number: "0750236789")
amalia_pic = URI.open("https://res.cloudinary.com/dowapfod4/image/upload/v1582205792/wr5yqkpcub8nomda9ewadr5bv3n4.jpg")
amalia.photo.attach(io: amalia_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
amalia.save!


puts "Creating bet rooms"
bet_room = BetRoom.new(name: "Paris entre potes")
bet_room_pic = URI.open("https://image.shutterstock.com/image-photo/four-friends-taking-selfie-together-260nw-641463781.jpg")
bet_room.photo.attach(io: bet_room_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
chatroom = Chatroom.new(name: "Paris entre potes")
bet_room.chatroom = chatroom
bet_room.save!

puts "Creating participation"
participation_1 = Participation.new(bet_room: bet_room, user: edouard)
participation_1.save!
participation_2 = Participation.new(bet_room: bet_room, user: xavier)
participation_2.save!
# participation_3 = Participation.new(bet_room: bet_room, user: pierre)
# participation_3.save!
participation_4 = Participation.new(bet_room: bet_room, user: benjamin)
participation_4.save!


puts 'Creating events'

pm_32 = Event.new(
    sport: "Football",
    league: "ligue 1",
    game: "Paris vs Marseille",
    description: "4 - 1",
    game_start_at: DateTime.new(2020,1,12,20,45,00),
    bet_room: bet_room,
    author: edouard,
    results: true,
    )

pm_32.save!

p "#{pm_32.sport} event created!"

fa_3_0 = Event.new(
  sport: "Football",
  league: "ligue 1",
  game: "France vs Allemagne",
  description: "3 - 0",
  game_start_at: DateTime.new(2020,5,4,20,45,00),
  bet_room: bet_room,
  author: edouard
  )

fa_3_0.save!

p "#{fa_3_0.sport} event created!"


fn_psf = Event.new(
  sport: "Tennis",
  league: "Roland Garros",
  game: "Federer vs Nadal",
  description: "6 - 4",
  game_start_at: DateTime.new(2020,4,4,14,30,00),
  bet_room: bet_room,
  author: edouard
  )

fn_psf.save!

p "#{fn_psf.sport} event created!"

fa_bo = Event.new(
  sport: "Rugby",
  league: "Six Nations",
  game: "France vs Angleterre",
  description: "35 - 20",
  game_start_at: DateTime.new(2020,2,1,14,30,00),
  bet_room: bet_room,
  author: edouard,
  results: false,
  )

fa_bo.save!

p "#{fa_bo.sport} event created!"

f1_f = Event.new(
  sport: "Football",
  league: "Ligue 1",
  game: "Amiens vs Lyon",
  description: "0 - 2",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room,
  author: edouard,
  results: false
  )

f1_f.save!

p "#{f1_f.sport} event created!"

puts 'Creating bets'

paris_marseille = Bet.new(amount_cents: 4, result: true, event: pm_32, user: edouard)
paris_marseille_2 = Bet.new(amount_cents: 4, result: false, event: pm_32, user: benjamin)
paris_marseille.save!
paris_marseille_2.save!
france_allemagne = Bet.new(amount_cents: 5, result: true, event: fa_3_0, user: xavier)
france_allemagne.save!
federer_nadal = Bet.new(amount_cents: 6, result: false, event: fn_psf, user: benjamin)
federer_nadal.save!
# france_angleterre = Bet.new(amount_cents: 2, result: true, event: fa_bo, user: pierre)
# france_angleterre.save!
gpm = Bet.new(amount_cents: 1, result: false, event: f1_f, user: edouard)
gpm.save!

MoneyDispatch.new(pm_32).call
MoneyDispatch.new(fa_3_0).call
MoneyDispatch.new(fn_psf).call
MoneyDispatch.new(f1_f).call



