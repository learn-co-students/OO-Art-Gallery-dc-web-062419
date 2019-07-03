require_relative '../config/environment.rb'

lisa = Artist.new("Lisa", 7)
john = Artist.new("John", 2)

gallery_1 = Gallery.new("Gallery 1", "NYC")
gallery_2 = Gallery.new("Gallery 2", "SF")

moonlight = Painting.new("Moonlight", 2000, lisa, gallery_1)
sunflower = Painting.new("Sun Flower", 8000, lisa, gallery_2)
Darkness = Painting.new("Darkness", 5000, john, gallery_2)

# Artists - paintings, galleries and cities for Lisa
puts lisa.paintings
puts lisa.galleries
puts lisa.cities
puts Artist.most_prolific

## create new painting
lisa.create_painting("The stars", 34000, gallery_2)
lisa.create_painting("Roses", 1200, gallery_1)

puts "the total price of all painting"
puts Painting.total_price


#Total number of experiences for all artists
puts Artist.total_experience




##GALLERY
puts "These are the instances of paintings in Gallery 1"
puts gallery_1.paintings

puts "These are the instances of artists with paintings in Gallery 1"
puts gallery_1.artists

puts "These are the names of artists with paintings in Gallery 1"
puts gallery_1.artist_names

puts "This is the most expensive painting in Gallery 1"
puts gallery_1.most_expensive_painting




# binding.pry

puts "Bob Ross rules."
