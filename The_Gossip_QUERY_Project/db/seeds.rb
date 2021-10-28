# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
# => Faker::Config.locale = :fr

# => Gossip.destroy_all
#Tag.destroy_all
#User.destroy_all
#City.destroy_all
#PrivateMessage.destroy_all
#JoinTableTagGossip.destroy_all
#LierPrivateMessageUser.destroy_all

#Cities

10.times do
  city_and_zip = Faker::Address.full_address.split(', ').last
  zip = city_and_zip.split(' ').first
  city_name = city_and_zip.split(' ').last
  City.create(name: city_name, zip_code: zip)
end

puts "Cities table"


#Users
#adjectifs= %w[petit grand maigre gros chauve muscle intelligent parfait mediocre insupportable eblouissant valeureux]

10.times do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 50 + rand(10)), email: Faker::Internet.email, age: Faker::Number.between(from: 15, to: 99))
  end

#10.times do 
  #first_name = Faker::Name.first_name
  #age = rand(18..90)
  #city = City.all.sample
#text = "Je m'appelle #{first_name}, je suis #{adjectifs.sample} et mon livre préféré est #{Faker::Book.title}, je suis #{Faker::Name.title[:job].sample} à #{city.name} "
  #User.create(first_name: first_name, last_name: Faker::Name.last_name ,description: text, email: Faker::Internet.email, age: age, city: city )
#end

puts "Users table"
#tp User.all

#Gossips
#20.times do 
  #Gossip.create(title: Faker::Hipster.word, content: Faker::ChuckNorris.fact, user: User.all.sample )
  
#end

puts "Gossips table"
#tp Gossip.all

#Tags 
#10.times do
  #Tag.create(title: Faker::Verb.base)
#end

puts "Cities table"
# tp Tag.all

#Tag.all.each do |t|
  #JoinTableTagGossip.create(tag: t, gossip: Gossip.all.sample)
#end

#Gossip.all.each do |g|
  #JoinTableTagGossip.create(tag: Tag.all.sample, gossip: g)
#end


puts "JoinTableTagGossip table"
#tp JoinTableTagGossip.all

#Private messages
#10.times do
  #PrivateMessage.create(content:Faker::Lorem.sentence,sender: User.all.sample)
#end
puts
puts "Private messages table"
#tp PrivateMessage.all

#Lier private_messages_users
#User.all.each do |u|
  #LierPrivateMessageUser.create(user: u, private_message: PrivateMessage.all.sample)
#end

#PrivateMessage.all.each do |pm|
  #LierPrivateMessageUser.create(user: User.all.sample, private_message: pm)
#end


#puts "Lier private message et users table"
#tp LierPrivateMessageUser.all

10.times do
    City.create(name: Faker::Address.city, zip_code: Faker::Address.building_number)
end
puts "city"

20.times do |index|
    Gossip.create!(
      title: Faker::Lorem.sentence(word_count: 4),
      content: Faker::Lorem.sentence(word_count: 15)
    )
  end

 

  10.times do |index|
    Tag.create!(
      title: Faker::Lorem.sentence(word_count: 1),
      title: Faker::ChuckNorris.fact
    )
  end
  
  5.times do 
    PrivateMessage.create(
      content: Faker::Lorem.unique.paragraph(sentence_count: 1, supplemental: true)
    )
  end

  30.times do
    Comment.create(content: Faker::Lorem.sentence(word_count: 50 + rand(100)))
  end

  20.times do 		#creer 20 like qui est de maniere aleatoire un like de comment ou de gossip
	if rand(0..10)%2==0 
		Like.create(user: User.all.sample, gossip: Gossip.all.sample)
	else
		Like.create(user: User.all.sample, comment: Comment.all.sample)
	end
    
end