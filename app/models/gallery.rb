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
  def paint_in_gallery(painting)
    painting.gallery = self
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end
  def artists
    paintings.map {|painting| painting.artist}
  end
  def artist_names
    paintings.map {|painting| painting.artist.name}
  end
  def most_expensive_painting
    price = self.paintings.map{|painting| painting.price}
    price.max 
    self.paintings.select do |painting| painting.price == price.max
    end
  end
end
