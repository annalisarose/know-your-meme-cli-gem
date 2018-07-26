class KnowYourMeme::Meme
  attr_accessor :name, :about, :origin, :spread, :url

    @@all = []

    def initialize(name, url)
      @name = name
      @url = url
      @@all << self
    end

    def self.all
      @@all
    end

end
