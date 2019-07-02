class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
      self.paintings.map {|painting| painting.gallery}
  end

  def cities
      self.galleries.map {|gallery| gallery.cities}
  end

  def self.total_experience
        self.all.sum {|artist| artist.years_experience}
  end

  def self.most_prolific
    # binding.pry
      self.all.map do |artist|
        a = artist.years_experience
        b = artist.paintings.count
         b/a.to_f
        # binding.pry
      end.max
  end

    def create_painting(title, price, gallery)
     painting = Painting.new(title, price, gallery, self)
    end

end
