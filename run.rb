require_relative './app/models/artist.rb'
require_relative './app/models/gallery.rb'
require_relative './app/models/painting.rb'


urs = Artist.new("Ursula", 27)
frank = Artist.new('Frank', 34)
sandy = Artist.new('Sandy', 495)

# thing1 = Painting.new('John Wayne', '600', urs)
# thing2 = Painting.new('Sewing Machine', '700', frank)
# thing3 = Painting.new('Sad Day for Pants', '300', urs)
# thing4 = Painting.new('Newspaper', '800', frank)
# thing5 = Painting.new('Laundry', '300', urs)
# thing6 = Painting.new('Thread', '900', sandy)
# thing7 = Painting.new('WB House', '400', urs)
# thing8 = Painting.new('Beta Fish', '800', frank)
harmonyhall = Gallery.new('Harmony Hall', 'Maryland')
ostreet = Gallery.new('O Street', 'DC')
longview = Gallery.new('Long View', 'DC')

urs.create_painting('John Wayne', '600', ostreet)
urs.create_painting('Sewing Machine', '700', ostreet)
urs.create_painting('Sad Day for Pants', '300', longview)
frank.create_painting('Thread', '900', longview)
frank.create_painting('Beta Fish', '3000', harmonyhall)
sandy.create_painting('Laundry', '330', harmonyhall)



puts Artist.all
puts Painting.all
puts "----------------------------"
# puts thing1.price
# puts thing1.artist.name
# puts urs.paintings
puts "----------------------------"
# ostreet.show(thing1)
# ostreet.show(thing2)
# ostreet.show(thing3)
# harmonyhall.show(thing4)
# harmonyhall.show(thing5)
# # harmonyhall.show(thing6)
# longview.show(thing7)
# # longview.show(thing8)

puts "----------------------------"
puts urs.galleries
puts urs.cities

puts "----------------------------"
puts "Total years experience: #{Artist.total_experience}"

puts "----------------------------"
puts "Most prolific #{Artist.most_prolific}"


puts "----------------------------"
puts Gallery.all.each {|g| puts "All the paintings at #{g.name}: #{g.paintings} "}


puts "----------------------------"
puts longview.artists

puts longview.artists_names
puts Gallery.all.each {|g| puts "The most expensive painting at #{g.name}: #{g.most_expensive_painting} at #{g.most_expensive_painting.price} for #{g.most_expensive_painting.title}"}
