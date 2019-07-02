require_relative '../config/environment.rb'

# Artist.new(name, years_experience)
# Painting.new(title,price,gallery,artist)
# Gallery.new(name, city)

# artists
bob = Artist.new("Bob",1)
sally = Artist.new("Sally",4)
jane = Artist.new("Jane",20)
# galleries
contempo = Gallery.new("Contempo Gallery","New York")
moderno =  Gallery.new("Moderno Gallery","DC")
# paintings
dog_on_chair = Painting.new("Dog on Chair",1000,contempo,bob)
cat_on_bed = Painting.new("Cat on Bed",2000,contempo,bob)
student_with_coffee = Painting.new("Student with Coffee",1500,contempo,sally)
child_with_screen = Painting.new("Child with Screen",3500,moderno,sally)
commuter_with_headphones = Painting.new("Commuter with Headphones",2500,contempo,sally)
ennui = Painting.new("Ennui",4000,contempo,jane)
malaise = Painting.new("Malaise",4500,contempo,jane)
angst = Painting.new("Angst",2000,moderno,jane)
lassitude = Painting.new("Lassitude",3000,moderno,jane)

p "Artist.all - Returns an array of all the artists"
p Artist.all == [bob,sally,jane]
p "Artist#paintings - Returns an array all the paintings by an artist"
p bob.paintings == [dog_on_chair,cat_on_bed]
p jane.paintings == [ennui,malaise,angst,lassitude]
p "Artist#galleries - Returns an array of all the galleries that an artist has paintings in"
p bob.galleries == [contempo]
p jane.galleries == [contempo,moderno]
p "Artist#cities - Return an array of all cities that an artist has paintings in"
p bob.cities == ["New York"]
p jane.cities == ["New York","DC"]
p "Artist.total_experience - Returns an integer that is the total years of experience of all artists"
p Artist.total_experience == 1+4+20
p Artist.total_experience.class == Integer
p "Artist.most_prolific - Returns an instance of the artist with the highest amount of paintings per year of experience."
p Artist.most_prolific == bob
p "Painting.all - Returns an array of all the paintings"
p Painting.all == [dog_on_chair,cat_on_bed,student_with_coffee,child_with_screen,commuter_with_headphones,ennui,malaise,angst,lassitude]
p "Painting.total_price - Returns an integer that is the total price of all paintings"
p Painting.total_price == 1000+2000+1500+3500+2500+4000+4500+2000+3000
p Painting.total_price.class == Integer
p "Gallery.all - Returns an array of all the galleries"
p Gallery.all == [contempo,moderno]
p "Gallery#paintings - Returns an array of all paintings in a gallery"
p moderno.paintings == [child_with_screen,angst,lassitude]
p "Gallery#artists - Returns an array of all artists that have a painting in a gallery"
p moderno.artists == [sally,jane]
p "Gallery#artist_names - Returns an array of the names of all artists that have a painting in a gallery"
p moderno.artist_names == ["Sally","Jane"]
p "Gallery#most_expensive_painting - Returns an instance of the most expensive painting in a gallery"
p moderno.most_expensive_painting == child_with_screen
p moderno.most_expensive_painting.class == Painting

# binding.pry

puts "Bob Ross rules."
