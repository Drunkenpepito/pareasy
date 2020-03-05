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
puts ' users created'

puts "Creating bet rooms"
bet_room = BetRoom.new(name: "potes du rugby")
bet_room_pic = URI.open("https://image.shutterstock.com/image-photo/four-friends-taking-selfie-together-260nw-641463781.jpg")
bet_room.photo.attach(io: bet_room_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
chatroom = Chatroom.new(name: "Paris entre potes")
bet_room.chatroom = chatroom
bet_room.save!

bet_room2 = BetRoom.new(name: "Team Rolland!")
bet_room2_pic = URI.open("https://res.cloudinary.com/dz8mhj8vj/image/upload/v1583341698/Roland-Garros_uyeyoz.jpg")
bet_room2.photo.attach(io: bet_room2_pic, filename: 'some-image2.jpg', content_type: 'image/jpg')
chatroom2 = Chatroom.new(name: "Roland garros team!")
bet_room2.chatroom = chatroom2
bet_room2.save!



puts ' bet rooms created'

puts "Creating participation"
participation_1 = Participation.new(bet_room: bet_room, user: edouard)
participation_1.save!
participation_2 = Participation.new(bet_room: bet_room, user: xavier)
participation_2.save!
participation_3 = Participation.new(bet_room: bet_room, user: pierre)
participation_3.save!
participation_4 = Participation.new(bet_room: bet_room, user: benjamin)
participation_4.save!

participation_5 = Participation.new(bet_room: bet_room, user: marin)
participation_5.save!
participation_6 = Participation.new(bet_room: bet_room, user: paul)
participation_6.save!
participation_7 = Participation.new(bet_room: bet_room, user: marie)
participation_7.save!
participation_8 = Participation.new(bet_room: bet_room, user: hugues)
participation_8.save!

participation_9 = Participation.new(bet_room: bet_room, user: tom)
participation_9.save!
participation_10 = Participation.new(bet_room: bet_room, user: pauline)
participation_10.save!
participation_11 = Participation.new(bet_room: bet_room, user: diane)
participation_11.save!

participation_12 = Participation.new(bet_room: bet_room, user: amalia)
participation_12.save!
participation_13 = Participation.new(bet_room: bet_room, user: laure)
participation_13.save!
participation_14 = Participation.new(bet_room: bet_room, user: nicolas)
participation_14.save!
participation_15 = Participation.new(bet_room: bet_room, user: florent)
participation_15.save!

participation_16 = Participation.new(bet_room: bet_room, user: guillaume)
participation_16.save!
participation_17 = Participation.new(bet_room: bet_room, user: alexandre)
participation_17.save!
participation_18 = Participation.new(bet_room: bet_room, user: francois)
participation_18.save!
participation_19 = Participation.new(bet_room: bet_room, user: elena)
participation_19.save!
participation_20 = Participation.new(bet_room: bet_room, user: astrid)
participation_20.save!






participation_12 = Participation.new(bet_room: bet_room2, user: astrid)
participation_12.save!

participation_13 = Participation.new(bet_room: bet_room2, user: florent)
participation_13.save!
participation_14 = Participation.new(bet_room: bet_room2, user: nicolas)
participation_14.save!
participation_15 = Participation.new(bet_room: bet_room2, user: laure)
participation_15.save!
participation_16 = Participation.new(bet_room: bet_room2, user: pierre)
participation_16.save!
participation_17 = Participation.new(bet_room: bet_room2, user: elena)
participation_17.save!
participation_18 = Participation.new(bet_room: bet_room2, user: pauline)
participation_18.save!
participation_19 = Participation.new(bet_room: bet_room2, user: marie)
participation_19.save!
participation_20 = Participation.new(bet_room: bet_room2, user: diane)
participation_20.save!
participation_21 = Participation.new(bet_room: bet_room2, user: edouard)
participation_21.save!
participation_22 = Participation.new(bet_room: bet_room2, user: benjamin)
participation_22.save!
participation_23 = Participation.new(bet_room: bet_room2, user: xavier)
participation_23.save!



puts ' participations created'

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
  author: edouard,
  results: false,
  )

fa_3_0.save!

p "#{fa_3_0.sport} event created!"


fn_psf = Event.new(
  sport: "tennis",
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

ms_3_0 = Event.new(
  sport: "Football",
  league: "Ligue 1",
  game: "Montpellier vs Strasbourg",
  description: "3 - 0",
  game_start_at: DateTime.new(2019,9,7,15,00,00),
  bet_room: bet_room,
  author: marin,
  results: false
  )

ms_3_0.save!

mr_v = Event.new(
  sport: "Football",
  league: "Ligue 1",
  game: "Monaco vs Reims",
  description: "Victoire de Monaco",
  game_start_at: DateTime.new(2019,9,7,15,00,00),
  bet_room: bet_room,
  author: paul,
  results: true
  )

mr_v.save!

nl_0_1 = Event.new(
  sport: "Football",
  league: "Ligue 1",
  game: "Nantes vs Lille",
  description: "0 - 1",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room,
  author: marie,
  results: false
  )

nl_0_1.save!

lhc_3_0 = Event.new(
  sport: "Football",
  league: "Ligue 1",
  game: "Le Havre vs Chateauroux",
  description: "3 - 0",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room,
  author: hugues,
  results: false
  )

lhc_3_0.save!

ac_v = Event.new(
  sport: "Rugby",
  league: "Top 14",
  game: "Agen vs Clermont",
  description: "Victoire de Agen",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room,
  author: tom,
  results: false
  )

ac_v.save!

tsf_d = Event.new(
  sport: "Rugby",
  league: "Top 14",
  game: "Toulon vs Stade francais",
  description: "Defaite de Toulon",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room,
  author: pauline,
  results: false
  )

tsf_d.save!

bl_d = Event.new(
  sport: "Rugby",
  league: "Top 14",
  game: "Brive vs Lyon",
  description: "Defaite de Lyon",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room,
  author: diane,
  results: true
  )

bl_d.save!

bbc_v = Event.new(
  sport: "Rugby",
  league: "Top 14",
  game: "Bordeaux Bègles vs Castres",
  description: "Victoire de Castres",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room,
  author: diane,
  results: false
  )

bbc_v.save!

bt_v = Event.new(
  sport: "Rugby",
  league: "Top 14",
  game: "Bayone vs Toulouse",
  description: "Victoire de Toulouse",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room,
  author: xavier,
  results: false
  )

bt_v.save!

hsf_v = Event.new(
  sport: "Rugby",
  league: "Top 14",
  game: "Le HAC vs Stade francais",
  description: "Victoire du HAC",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room,
  author: pierre,
  results: true
  )

hsf_v.save!

br92_d = Event.new(
  sport: "Rugby",
  league: "Top 14",
  game: "Bayonne vs Racing 92",
  description: "Defaite de Bayonne",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room,
  author: benjamin,
  results: true
  )

br92_d.save!





t1 = Event.new(
  sport: "tennis",
  league: "Rolland Garros",
  game: "Djocovic vs Zverev",
  description: "Defaite de Zverev",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room2,
  author: laure,
  )

t1.save!

t2= Event.new(
  sport: "tennis",
  league: "Rolland Garros",
  game: "Thiem vs Khachanov",
  description: "Defaite de Thiem",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room2,
  author: nicolas,
  )

t2.save!

t3 = Event.new(
  sport: "tennis",
  league: "Rolland Garros",
  game: "Wawrinka vs Federer",
  description: "Victoire de Federer",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room2,
  author: florent,
  )

t3.save!

t4 = Event.new(
  sport: "tennis",
  league: "Rolland Garros",
  game: "Nishikori vs Nadal",
  description: "Defaite de Nishikori",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room2,
  author: guillaume,
  results: true
  )

t4.save!

t5 = Event.new(
  sport: "tennis",
  league: "Rolland Garros",
  game: "Furic vs Blanchy",
  description: "Defaite de Blanchy",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room2,
  author: alexandre,
  )

t5.save!

t6 = Event.new(
  sport: "tennis",
  league: "Rolland Garros",
  game: "Nadal vs Sharapova",
  description: "Defaite de Nadal",
  game_start_at: DateTime.new(2020,9,7,15,00,00),
  bet_room: bet_room2,
  author: francois,
  )

t6.save!
puts ' events created'

puts 'Creating bets'

paris_marseille = Bet.new(amount_cents: 4, result: true, event: pm_32, user: edouard)
paris_marseille_2 = Bet.new(amount_cents: 4, result: false, event: pm_32, user: benjamin)
paris_marseille.save!
paris_marseille_2.save!
france_allemagne = Bet.new(amount_cents: 5, result: true, event: fa_3_0, user: xavier)
france_allemagne.save!
federer_nadal = Bet.new(amount_cents: 6, result: false, event: fn_psf, user: benjamin)
federer_nadal.save!
france_angleterre = Bet.new(amount_cents: 2, result: true, event: fa_bo, user: pierre)
france_angleterre.save!
gpm = Bet.new(amount_cents: 2, result: false, event: f1_f, user: edouard)
gpm.save!
p1 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: francois)
p1.save!
p2 = Bet.new(amount_cents: 5, result: false, event: tsf_d , user: alexandre)
p2.save!
p3 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: guillaume)
p3.save!
p4 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: florent)
p4.save!
p5 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: nicolas)
p5.save!
p6 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: laure)
p6.save!
p7 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: elena)
p7.save!
p8 = Bet.new(amount_cents: 5, result: false, event: tsf_d , user: pierre)
p8.save!
p9 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: astrid)
p9.save!
p10 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: diane)
p10.save!
p11 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: pauline)
p11.save!
p12 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: tom)
p12.save!
p13 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: hugues)
p13.save!
p14 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: marie)
p14.save!
p15 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: edouard)
p15.save!
p16= Bet.new(amount_cents: 5, result: true, event: tsf_d , user: xavier)
p16.save!
p17 = Bet.new(amount_cents: 5, result: true, event: tsf_d , user: benjamin)
p17.save!
p18 = Bet.new(amount_cents: 5, result: false, event: tsf_d , user: paul)
p18.save!

p19 = Bet.new(amount_cents: 3, result: true, event: t4 , user: xavier)
p19.save!
p20 = Bet.new(amount_cents: 3, result: false, event: t4 , user: benjamin)
p20.save!
p21 = Bet.new(amount_cents: 3, result: false, event: t4 , user: edouard)
p21.save!
p22 = Bet.new(amount_cents: 3, result: false, event: t4 , user: pierre)
p22.save!
p23 = Bet.new(amount_cents: 3, result: false, event: t4 , user: elena)
p23.save!
p24 = Bet.new(amount_cents: 3, result: false, event: t4 , user: pauline)
p24.save!
p25 = Bet.new(amount_cents: 3, result: false, event: t4 , user: marie)
p25.save!
p26 = Bet.new(amount_cents: 3, result: false, event: t4 , user: diane)
p26.save!
p27 = Bet.new(amount_cents: 14, result: true, event: br92_d , user: astrid)
p27.save!
p28 = Bet.new(amount_cents: 14, result: false, event: br92_d , user: diane)
p28.save!
p29 = Bet.new(amount_cents: 14, result: true, event: br92_d , user: pauline)
p29.save!
p30 = Bet.new(amount_cents: 14, result: false, event: br92_d , user: tom)
p30.save!
p31 = Bet.new(amount_cents: 14, result: true, event: br92_d , user: hugues)
p31.save!
p32 = Bet.new(amount_cents: 14, result: false, event: br92_d , user: marie)
p32.save!
p33 = Bet.new(amount_cents: 14, result: true, event: br92_d , user: edouard)
p33.save!
p34= Bet.new(amount_cents: 14, result: false, event: br92_d , user: xavier)
p34.save!
p35 = Bet.new(amount_cents: 14, result: true, event: br92_d , user: benjamin)
p35.save!
p36 = Bet.new(amount_cents: 14, result: false, event: br92_d , user: francois)
p36.save!
p37 = Bet.new(amount_cents: 3, result: false, event: t1 , user: xavier)
p37.save!
p38 = Bet.new(amount_cents: 3, result: false, event: t2 , user: benjamin)
p38.save!
p39 = Bet.new(amount_cents: 3, result: false, event: t3 , user: pierre)
p39.save!
p40 = Bet.new(amount_cents: 3, result: false, event: t5 , user: edouard)
p40.save!
p41 = Bet.new(amount_cents: 3, result: false, event: t6 , user: marie)
p41.save!

puts ' bets created'

puts ' Money dispatch...'

MoneyDispatch.new(pm_32).call
puts ' pm_32'
MoneyDispatch.new(fa_3_0).call
puts ' fa_3_0'
MoneyDispatch.new(fn_psf).call
puts ' fn_psf'
MoneyDispatch.new(f1_f).call
puts ' f1_f'
MoneyDispatch.new(tsf_d).call
puts ' tsf_d'
MoneyDispatch.new(t4).call
puts ' t4'
MoneyDispatch.new(br92_d).call
puts ' br92_d'





