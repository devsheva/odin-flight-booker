# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airports = Airport.create([{ code: 'PIT', city: 'Pittsburgh' }, { code: 'SAN', city: 'San Diego' }, { code: 'DTW', city: 'Detroit' }])

airports.each do |departure|
  airports.each do |arrival|
    next if departure == arrival

    Flight.create(
      takeoff: Date.today,
      departure: departure,
      arrival: arrival,
      duration: rand(200).to_int
    )
  end
end
