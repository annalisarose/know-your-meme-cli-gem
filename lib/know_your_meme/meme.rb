class KnowYourMeme::Meme
  attr_accessor :name, :about, :origin, :spread, :url

    @@all = []

    def initialize(name, url, about = nil, origin = nil, spread = nil)
      @name = name
      @url = url
      @about = about
      @origin = origin
      @spread = spread
      @@all << self
    end

    def self.all
      @@all
    end

end
