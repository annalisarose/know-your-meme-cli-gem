class KnowYourMeme::Scraper

  BASE_URL = "https://knowyourmeme.com/memes/popular"

  def self.scrape_memes
    doc = Nokogiri::HTML(open(BASE_URL))

    #build doc.css each do loop
  end

end
