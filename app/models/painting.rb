class Painting

  attr_reader :title, :price, :gallery

  @@all = []

  def initialize(title, price, gallery)
    @title = title
    @price = price
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
      self.all.sum {|painting| painting.price}
  end

end
