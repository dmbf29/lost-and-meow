puts 'Destroying pets...'
Pet.destroy_all

puts "Creating Pets..."
50.times do
  Pet.create!(
    name: Faker::TvShows::TwinPeaks.character,
    address: Faker::Movies::LordOfTheRings.location,
    species: Pet::SPECIES.sample,
    found_on: Date.today - rand(1..20)
  )
end
puts "..created #{Pet.count} pets..."
