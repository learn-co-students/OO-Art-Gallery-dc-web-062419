require_relative '../config/environment.rb'
#artists
michelle = Artist.new("Michelle Lam", 12)
chloe = Artist.new("Chloe Lam", 5)
dan = Artist.new("Dan", 5)

#galleries
met = Gallery.new("Metropolitan Art Museum", "New York City")
nationalart = Gallery.new("National Art Gallery", "Washington, D.C." )
#paintings

monalisa = Painting.new("Mona Lisa", 200, michelle, met)
waterfalls = Painting.new("Waterfalls", 150, chloe, met)
landscape = Painting.new("Landscape", 175, chloe, met)
another_one = Painting.new("Another One", 175, chloe, met)
flowers = Painting.new("Flowers", 500, michelle, nationalart)

puts dan.create_painting("Daisies", 150, nationalart)




puts Painting.total_price

binding.pry

puts "Bob Ross rules."
