require_relative '../config/environment.rb'

# artist 
george = Artist.new("George", 8)
mike = Artist.new("Mike", 2)
ky = Artist.new("Ky", 5)
jill = Artist.new("Jill", 5)

# gallery
photo = Gallery.new("Photo Gallery", "New York")
color = Gallery.new("Color Gallery", "Munich")
statue = Gallery.new("Statue Gallery", "Orlando")
drawing = Gallery.new("Drawing Gallery", "Munich")

#  painting
dot = Painting.new("Dot", 150, photo, ky)
tree = Painting.new("Tree of Life", 200, drawing, george)
sun = Painting.new("Sun", 50, color, ky)


# Painting methods
p Painting.all
p "___________________________"


# gallery methods
p Gallery.all
p "___________________________"
p photo.paint_in_gallery(dot)
color.paint_in_gallery(sun)

# artist methods
p "___________________________"
p Artist.all
p "___________________________"
p ky.paintings.length == 2
p "___________________________"
p ky.galleries.length == 2
p "___________________________"
p ky.cities.length == 2
p "___________________________"
p Artist.total_experience == 20
p "___________________________"
p mike.create_painting("House", 85, color)
jill.create_painting("Bird", 45, statue)
p "___________________________"
p Artist.most_prolific

# more painting methods
p Painting.total_price
p "___________________________"

# more gallery methods
p color.paintings.length == 2
p "___________________________"
p color.artists.length == 2
p "___________________________"
p color.artist_names
p "___________________________"
p color.most_expensive_painting


binding.pry

# puts "Bob Ross rules."
