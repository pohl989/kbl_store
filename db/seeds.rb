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
    password_confirmation: password,
  )
end

48.times do |index|
  User.create(
    email: "user-#{index}@pohl989.com",
    name: "Username-#{index}",
    nickname: Faker::RuPaul.queen,
    image: Faker::Avatar.image("my-own-slug", "50x50"),
    password: "password",
    password_confirmation: "password",
  )
  end

puts "we added some rockstar users"

product_list = [
  't-shirt',
  'longsleeve shirt',
  'sweatshirt',
  'polo',
  'waterbottle',
  'stickers',
  'baseball hat',
  'tote bag',
  'chapstick',
  'koozie'
]


product_list.each do |product_item|
  Product.create(
    description: Faker::Movie.quote,
    title: product_item,
    price: (rand * (25.00 - 5.00) + 5.00).round(2),
    product_number: Faker::Bank.iban("be"),
    image: Faker::Avatar.image,
  )
end

puts "Products added"

codes_array = ["SWA", "SWT", "MTW", "PWN", "PWC", "PWS", "SEN", "YCC", "OPS", "NPS", "BLM", "FWS", "USF", "BOR", "SPE"]

50.times do |index|
  Order.create(
    customer_id: (3..50).to_a.sample,
    preparer_id: [1,2].sample,
    order_number: "#{codes_array.sample}-12-#{index}",
    status: Order.statuses.to_a.sample[0],
    order_date: Date.today
  )
end


Order.all.each do |order|
  (1..5).to_a.sample.times do
  order.order_items.create(
    product_id: Product.all.sample.id,
    quantity: (1..5).to_a.sample
  )
    end
  end


puts 'Orders are all in!'

(1...5).to_a.sample 


puts 'Hello friend, the seeding is complete'
