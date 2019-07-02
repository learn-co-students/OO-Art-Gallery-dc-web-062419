require_relative '../config/environment.rb'

john = Artist.new("John", 3)
bill = Artist.new("Bill", 5)
sally = Artist.new("Sally", 9)

women = Gallery.new("Women", "Washington")
men = Gallery.new("Men", "New York")
baby = Gallery.new("Baby", "Chicago")

john.create_painting("Mona Lisa", 100, women)
bill.create_painting("p1", 200, women)
sally.create_painting("p5", 300, baby)
john.create_painting("p2", 400, men)
bill.create_painting("p3", 500, men)
sally.create_painting("p4", 600, women)

#  Painting.all.each {|painting| puts painting.artist.name}
# puts sally.galleries
# sally.galleries.each {|painting| 
#   puts  painting.name
# puts painting.city}

# puts Artist.most_prolific
# puts men.paintings

puts baby.most_expensive_painting




binding.pry

puts "Bob Ross rules."
