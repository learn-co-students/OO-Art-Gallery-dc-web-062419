require_relative '../config/environment.rb'

picasso = Artist.new("Picasso", 40)
van_gogh = Artist.new("Van Gogh", 35)
p "#### Artist Methods ###"
p "This test expects the .all method to return an array of all artists"
p Artist.all 
p Artist.all.size == 2
puts "\n"
louvre = Gallery.new("Louvre", "Paris")
national = Gallery.new("National Gallery of Art", "Washington")
metro = Gallery.new("The Metropolitan", "New York")
starry_night = Painting.new("Starry Night", 100, van_gogh, louvre)
guernica = Painting.new("Guernica", 70, picasso, louvre)
guitarist = Painting.new("The Old Guitarist", 110, picasso, national)
p "This test expects the #paintings method to return an array of all the paintings by an artist"
p picasso.paintings
puts "\n"
p "This test expects the #galleries method to return an array of all the galleries that an artist has paintings in"
p picasso.galleries
puts "\n"
p "This test expects the #cities method to return an array of all the cities that an artist has paintings in"
p picasso.cities
puts "\n"
p "This test expects the .total_experience method to return an integer of the total years of experience of all artists"
p Artist.total_experience
puts "\n"
p "This test expects the .most_prolific method to return an instance of the artist with the highest amount of paintings per year of experience"
p Artist.most_prolific
puts "\n"
p picasso.create_painting("Blue", 80, louvre)
puts "\n"
puts "\n"
p "#### Painting Methods ###"
p "This test expects the .all method to return an array of all paintings"
p Painting.all
puts "\n"
p "This test expects the .total_price method to return an integer that is the total price of all paintings"
p Painting.total_price
puts "\n"
puts "\n"
p "#### Gallery Methods ###"
p "This test expects the .all method to return an array of all galleries"
p Gallery.all
puts "\n"
p "This test expects the #paintings method to return an array of all the paintings in a gallery"
p louvre.paintings
puts "\n"
p "This test expects the #artists method to return an array of all artists that have a painting in a gallery"
p louvre.artists.uniq
puts "\n"
p "This test expects the #artist_names method to return an array of the names of all artists that have a painting in a gallery"
p louvre.artist_names.uniq
puts "\n"
p "This test expects the #most_expensive_painting method to return an instance of the most expensive painting in a gallery"
p louvre.most_expensive_painting




# binding.pry

puts "Bob Ross rules."
