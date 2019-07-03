class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self
  end

  

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
    # binding.pry
  end

  def galleries
    self.paintings.map{|painting| painting.gallery}
    
  end

  def cities
    self.galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    self.all.sum {|artist| artist.years_experience}
  end

  def self.most_prolific
    self.all.max do |artist|
      artist.paintings.length / 
      # binding.pry
      artist.years_experience
    end
      
  def create_painting(title,price,gallery)
    Painting.new(title, price,self, gallery)
  end
      

  end




end
