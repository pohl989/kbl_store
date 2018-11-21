# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [
  ['kat.c.tran@gmail.com', 'Katrina Tran', 'Kat', Faker::Avatar.image("my-own-slug", "50x50"), 'password'],
  ['pohl989@gmail.com', 'Ben Pohl', 'Ben', Faker::Avatar.image("my-own-slug", "50x50"), 'password']
]

user_list.each do |email, name, nickname, image, password|
  User.create(
    email: email,
    name: name,
    nickname: nickname,
    image: image,
    password: password,
    password_confirmation: password
  )
end


#
# User.create(
#   email: 'kat.c.tran@gmail.com',
#   name: 'Katrina Tran',
#   nickname: 'Kat',
#   image: Faker::Avatar.image("my-own-slug", "50x50"),
#   password: 'password',
#   password_confirmation: 'password'
# )
#
# User.create(
#   email: 'kat.c.tran@gmail.com',
#   name: 'Katrina Tran',
#   nickname: 'Kat',
#   image: Faker::Avatar.image("my-own-slug", "50x50"),
#   password: 'password',
#   password_confirmation: 'password'
# )



puts 'Hello'
