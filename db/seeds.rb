# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "creating items"

Item.create(
  model: 'QTP 12',
  specs: "super super good",
  image_url: 'qtp-12.jpg',
  price: 342,
  )

Item.create(
  model: 'QTP 23',
  specs: "super super good",
  image_url: 'qtp-23.jpg',
  price: 342,
  )

items = Item.create(
  model: 'QTP 48',
  specs: "super super good",
  image_url: 'qtp-48.jpg',
  price: 342,
  )

items = Item.create(
  model: 'QTP 100',
  specs: "super super good",
  image_url: 'qtp-100.jpg',
  price: 342,
  )

p "4 items created, #{Item.count} items in database"
