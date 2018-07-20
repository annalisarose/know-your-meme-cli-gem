class KnowYourMeme::Scraper

  BASE_URL = "https://knowyourmeme.com/memes/popular"

  def self.scrape_memes
    doc = Nokogiri::HTML(open(BASE_URL, 'User-Agent' => 'Chrome'))

    #build doc.css each do loop
    doc.css('.entry-grid-body.infinite td')[0..7].each do |meme_entry|
        name = meme_entry.css('h2 a').text.strip
        url = "https://knowyourmeme.com#{meme_entry.css('a:first-child').attribute('href').value}"
        KnowYourMeme::Meme.new(name, url)
        end
    end

    def self.scrape_meme_details(meme)
      url = meme.url
    end

end
