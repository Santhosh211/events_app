# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Organization.create([{name: 'Amazon'}, {name: 'Ebay'}, {name: 'Best Buy'}, {name: 'Target'}])

o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
10.times do
  Event.create(created_at: (Time.now + rand(1..10000)), hostname: "Host #{(0...5).map { o[rand(o.length)] }.join}", organization_id: rand(1..4))
end
