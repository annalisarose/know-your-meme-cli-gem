class KnowYourMeme::Scraper

  BASE_URL = "https://knowyourmeme.com/memes/popular"

  def self.scrape_memes
    doc = Nokogiri::HTML(open(BASE_URL))

    #build doc.css each do loop
    doc.css(tr td)[0..9].each
      do |meme_entry|
        name = meme_entry.css('h2 a').text.strip
      end
  end

end
