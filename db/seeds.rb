# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  email: "admin@example.com",
  password: "passwordpassword",
)

User.create!(
  email: "regular@example.com",
  password: "passwordpassword",
)

5.times do
  random_password = Faker::Internet.password(16, 26)
  User.create!(
    email: Faker::Internet.email,
    password: random_password,
  )
end

puts "#{User.count} users created."

Site.create!(
  name: 'Sample Site',
  subdomain: 'sample-site',
  user_id: 1,
)

Site.create!(
  name: 'Example Site',
  subdomain: 'example-site',
  user_id: 1,
)

ActsAsTenant.current_tenant = Site.find_by(subdomain: 'sample-site')

3.times do
  Kid.create!(
    name: Faker::Name.name,
    age: rand(1..8),
    photo: 'http://placehold.it/150x150',
  )
end

puts "#{Kid.count} kids created."

10.times do
  wordcount = rand(8..30)
  Update.create!(
    upload: 'http://placehold.it/800x600',
    content: Faker::Lorem.words(wordcount).join(" "),
    kid_id: rand(1..Kid.count),
  )
end

puts "#{Update.count} updates created."

15.times do
  Member.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'passwordpassword',
    avatar: 'http://placehold.it/150x150',
  )
end

puts "#{Member.count} members created."

30.times do
  wordcount = rand(5..25)
  Comment.create!(
    content: Faker::Lorem.words(wordcount).join(" "),
    commentable_id: rand(1..10),
    commentable_type: 'Update',
    member_id: rand(1..Member.count),
  )
end

puts "#{Comment.count} update comments created."

100.times do
  wordcount = rand(5..25)
  Comment.create!(
    content: Faker::Lorem.words(wordcount).join(" "),
    commentable_id: rand(11..Comment.count),
    commentable_type: 'Comment',
    member_id: rand(1..Member.count),
  )
end

puts "#{Comment.count} update and comment comments created."

ActsAsTenant.current_tenant = Site.find_by(subdomain: 'example-site')

3.times do
  Kid.create!(
    name: Faker::Name.name,
    age: rand(1..8),
    photo: 'http://placehold.it/150x150',
  )
end

puts "#{Kid.count} kids created."

10.times do
  wordcount = rand(8..30)
  Update.create!(
    upload: 'http://placehold.it/800x600',
    content: Faker::Lorem.words(wordcount).join(" "),
    kid_id: rand(1..Kid.count),
  )
end

puts "#{Update.count} updates created."

15.times do
  Member.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'passwordpassword',
    avatar: 'http://placehold.it/150x150',
  )
end

puts "#{Member.count} members created."

30.times do
  wordcount = rand(5..25)
  Comment.create!(
    content: Faker::Lorem.words(wordcount).join(" "),
    commentable_id: rand(11..20),
    commentable_type: 'Update',
    member_id: rand(16..30),
  )
end

puts "#{Comment.count} update comments created."

100.times do
  wordcount = rand(5..25)
  Comment.create!(
    content: Faker::Lorem.words(wordcount).join(" "),
    commentable_id: rand(131..(130 + Comment.count)),
    commentable_type: 'Comment',
    member_id: rand(16..30),
  )
end

puts "#{Comment.count} update and comment comments created."