
class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    self.class.all << self
  end

  # * `Painting.all`
  #   * Returns an `array` of all the paintings
  def self.all
    @@all
  end

  # * `Painting.total_price`
  #   * Returns an `integer` that is the total price of all paintings
  def self.total_price
    price_array = self.all.map { |work| work.price }
    total_price = price_array.reduce(0) { |sum, num| sum + num }
    return total_price
    # self.all.sum works too lol 
  end
end
