require 'pry'
class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
  end
  #   * Returns an `array` of all the galleries
  def self.all
    @@all
  end
  #   * Returns an `array` of all paintings in a gallery
  def paintings
    Painting.all.select { |painting| painting.gallery == self.name }
  end

  #   * Returns an `array` of all artists that have a painting in a gallery
  def artists
    self.paintings.map { |painting| painting.artist }
  end

  #   * Returns an `array` of the names of all artists that have a painting in a gallery
  def artist_names
    self.artists { |artist| artist.name }.uniq
  end

  def most_expensive_painting
  #   * Returns an `instance` of the most expensive painting in a gallery
    self.paintings.max_by { |painting| painting.price }
  end

end
