class KnowYourMeme::Scraper

  BASE_URL = "https://knowyourmeme.com/memes/popular"

  def self.scrape_memes
    doc = Nokogiri::HTML(open(BASE_URL, 'User-Agent' => 'Chrome'))

    doc.css('.entry-grid-body.infinite td')[0..7].each do |meme_entry|
      name = meme_entry.css('h2 a').text.strip
      url = "https://knowyourmeme.com#{meme_entry.css('a:first-child').attribute('href').value}"
      KnowYourMeme::Meme.new(name, url)
    end
  end

  def self.scrape_meme_details(meme)
      url = meme.url
      puts "*********Scraping******"
      doc = Nokogiri::HTML(open(url, 'User-Agent' => 'Chrome'))
      meme.about = doc.css('#about + p').text.strip
      meme.spread = doc.css('#spread + p').text.strip
      meme.origin = doc.css('#origin + p').text.strip
    end
end
