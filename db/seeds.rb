# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do 
 	users = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph(sentence_count: 3, supplemental: false, random_sentences_to_add: 4), email: Faker::Name.first_name+'@yopmail.com')
 end

# user = User.first(10)
# user_id =[]
# user.each	do |user| 
# user_id << user.id
# end

# 10.times do 
# 	event = Event.create(start_date: Faker::Date.between(from: DateTime.now, to: Date.today), duration: 60.minute.to_i ,title: Faker::Music.album, description: Faker::Movie.quote, price: rand(1..1000), location: Faker::WorldCup.stadium , admin_id: user_id[rand(0..user_id.length)])
# end	
# user = User.last(10)
# user_id =[]
# user.each	do |user| 
# user_id << user.id
# end
# event = Event.all
# event_id =[]
# event.each	do |event| 
# event_id << event.id
# end

# 50.times do 
# 	attendance = Attendance.create(stripe_customer_id: Faker::Stripe.valid_card, participant_id: user_id[rand(0..user_id.length)] , event_id: event_id[rand(0..event_id.length)] )
# end	
