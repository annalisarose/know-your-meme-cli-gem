class KnowYourMeme::Meme
  attr_accessor :name, :about, :origin, :spread, :url

  def self.all
  #  puts "
  #  1. Slender Man
  #  2. Doge
  #  3. ( ͡° ͜ʖ ͡°) / Lenny Face
  #  "

  meme_1 = self.new
  meme_1.name = "name"
  meme_1.about = "about"
  meme_1.origin = "origin"
  meme_1.spread = "spread"
  meme_1.url = "url"

  meme_2 = self.new
  meme_2.name = "name"
  meme_2.about = "about"
  meme_2.origin = "origin"
  meme_2.spread = "spread"
  meme_2.url = "url"

  [meme_1, meme_2]

  end

end
