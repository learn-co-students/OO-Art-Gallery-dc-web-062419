require_relative '../config/environment.rb'
require 'pry'

wiley = Artist.new("Kehinde Wiley", 20)
dali = Artist.new("Salvador Dali", 30)
kahlo = Artist.new("Frida Kahlo", 40)
sherald = Artist.new("Amy Sherald", 10)

gallery1 = Gallery.new("Dolly Gallery", "Nashville")
gallery2 = Gallery.new("The Harum Collection", "Mount Pleasant")
gallery3 = Gallery.new("Bake-Off Museum", "London")
gallery4 = Gallery.new("Tate Modern", "London")

painting1 = sherald.create_painting("Michelle Obama", 10000, "The Harum Collection")
painting2 = kahlo.create_painting("Self Portrait", 20000, "The Harum Collection")
painting3 = wiley.create_painting("Barack Obama", 10000, "Tate Modern")
painting4 = sherald.create_painting("Betty Davis Sings", 30000, "The Harum Collection")
painting5 = kahlo.create_painting("Beauty", 50000, "The Harum Collection")

# Artist.create_painting()

puts "Artist.all has all the artists"
puts Artist.all.size == 4
puts "Painting.all has all the paintings"
puts Painting.all.size == 5
puts "Gallery.all has all the galleries"
puts Gallery.all.size == 4
puts "Painting.total_price is a sum of all the prices"
puts Painting.total_price == 120000
puts "Artist.experience sums everyone's years of experience"
puts Artist.total_experience == 100


binding.pry

puts "Bob Ross rules."
