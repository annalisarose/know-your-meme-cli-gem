class KnowYourMeme::Scraper

  BASE_URL = "https://knowyourmeme.com/memes/popular"

  def self.scrape_memes
    doc = Nokogiri::HTML(open(BASE_URL, 'User-Agent' => 'Chrome'))

    #build doc.css each do loop
    doc.css('.entry-grid-body.infinite td')[0..3].each do |meme_entry|
        name = meme_entry.css('h2 a').text.strip
        KnowYourMeme::Meme.new(name)
        end
    end

end
