class Gallery

  attr_reader :name, :city, :gallery, :artist
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
      self.all.select {|gallery| gallery.painting == self}
  end

  def artist
    self.paintings.map {|painting| painting.artist}
  end

  def artist_names
    self.artist.map {|artist| artist.name}
  end

  def most_expensive_painting
    self.paintings.map {|painting| painting.price}.max
  end


end
