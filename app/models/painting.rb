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

  #Returns an array of all the paintings
  def self.all
  	@@all
  end

  #Returns an integer that is the total price of all paintings
  def self.total_price
    prices = 0
    self.all.each {|painting| prices += painting.price}
    prices
  end

end
