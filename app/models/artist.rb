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
    Paintings.all.select {|painting| painting.artist == self}
  end

    def galleries
      self.paintings.map {|painting| painting.gallery}
    end

    def cities
      self.galleries.map {|gallery| gallery.cities}
    end

    def self.total_experience
        self.all.sum {|artist| years_experience}
    end

    def self.most_prolific
      self.all.map do |artist|
        a = artist.years_experience
        b = artist.paintings.count
        b/a
      end
      
    end

    def create_painting(title, price, gallery)
      gallery
     painting = Painting.new(title, price, gallery)
     artist.paintings = self
    end


end
