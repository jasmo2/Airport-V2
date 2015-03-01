# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def randomLetters(x)
	o = [('A'..'Z')].map { |i| i.to_a }.flatten
	string = (0...x).map { o[rand(o.length)] }.join
	return string
end
def passport_generator
	rand(999_999).to_s.rjust(8, randomLetters(10))
end
prng = Random.new()
password = '12345678'
Airline.delete_all
Flight.delete_all
Departure.delete_all
Arrival.delete_all
Ticket.delete_all
Passenger.delete_all
for iteration in 1...4

	name = Faker::Name.name
	Airline.create!(id: iteration,:name => name)

	flightNumber = Faker::Address.state_abbr + Faker::Number.number(4)
	flight = Flight.create!(id: iteration,number: flightNumber,airline_id: iteration)

	30.times do |subiteration|
		passenger = Passenger.create!(name: Faker::Name.name, passport: passport_generator, password: password )
		Ticket.create!(flight_id: flight.id, passenger_id: passenger.id)
	end
	

	date = Faker::Time.forward(23, :morning)
	Departure.create!(id: iteration,date: date, flight_id: iteration, :status => prng.rand(0...4))

	
	date2 = Faker::Time.forward(23, :morning)
	Arrival.create!(id: iteration,date: date2, flight_id: iteration, :status => prng.rand(0...4))
end

