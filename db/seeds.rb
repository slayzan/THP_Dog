# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

25.times do
	city = City.create(name: Faker::Nation.capital_city)
	d = Dog.create(name: Faker::Creature::Dog.name, city: city)
	dos = Dogsitter.create(name: Faker::Name.first_name, city: city)
	Stroll.create(dog: d, dogsitter: dos)
end