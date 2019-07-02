class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.map {|painting| painting.artist}.uniq
  end

  def artist_names
    paintings.map {|painting| painting.artist.name}.uniq
  end

  def most_expensive_painting
    highest_price = 0
    pricey_one = ""
    paintings.each do |painting|
      if painting.price > highest_price
        highest_price = painting.price
        pricey_one = painting
      end
    end
    pricey_one
  end
end
