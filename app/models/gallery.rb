class Gallery

  attr_reader :name, :city
@@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    # binding.pry
   Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    self.paintings.map {|painting| painting.artist}
  end

  def artist_names
    self.artists.map {|artist| artist.name}
  end

  def most_expensive_painting
    price = self.paintings.map {|painting| painting.price}.max
  a =   self.paintings.find {|painting| painting.price == price}
  a.title
  end


end
