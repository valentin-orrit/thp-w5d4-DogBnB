require 'faker'

# destroy all
City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

# numbers of..
n_of_cities = 10
n_of_dogs = 10
n_of_dogsitters = 6
n_of_strolls = 30

# loops
n_of_cities.times do |index|
  City.create(city_name: Faker::Address.city)
end

puts "cities created!"

n_of_dogs.times do |index|
  Dog.create(
    name: Faker::FunnyName.name,
    city_id: rand(1..n_of_cities)
  )
end

puts "dogs created!"

n_of_dogsitters.times do |index|
  Dogsitter.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: rand(1..n_of_cities)
  )
end

puts "dogsitters created!"

n_of_strolls.times do |index|
  Stroll.create(
    date: Faker::Date.between(from: '2024-02-23', to: '2024-09-25'),
    city_id: rand(1..n_of_cities),
    dog_id: rand(1..n_of_dogs),
    dogsitter_id: rand(1..n_of_dogsitters)
  )
end

puts "strolls created!"