# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
User.create(
  :email => 'example.user@example.com',
  :display_name => 'Example User',
  :password => 'password',
  :password_confirmation => 'password'
)

ProductManager::Product.destroy_all
ProductManager::Product.create(
  :name => 'Glue',
  :price => '0.99'
)

ProductManager::Product.create(
  :name => 'Rat traps',
  :price => '1.59'
)

ProductManager::Product.create(
  :name => 'Settlers of Catan',
  :price => '19.99'
)

ProductManager::Product.create(
  :name => 'Dangerous-looking Yak',
  :price => '299.99'
)

Store::Order.destroy_all

o1 = Store::Order.new(
  :product_id => ProductManager::Product.first.id,
  :quantity => 2
)

o1.user_id = User.first.id
o1.save

o2 = Store::Order.new(
  :product_id => ProductManager::Product.all[1].id,
  :quantity => 3,
)

o2.user_id = User.first.id
o2.save
