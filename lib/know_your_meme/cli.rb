require 'pry'

class KnowYourMeme::CLI

def call
  puts "Top 8 Most Popular Memes:"
  list_memes
  prompt
  get_input
  goodbye
end

def list_memes
  KnowYourMeme::Scraper.scrape_memes
  memes = KnowYourMeme::Meme.all

  memes.each.with_index(1) do |meme, index|
   puts "#{index}. #{meme.name}"
 end
end

def get_input
    input =  gets.strip.downcase
    index = input.to_i - 1

    meme = KnowYourMeme::Meme.all[index]
    KnowYourMeme::Scraper.scrape_meme_details(meme)
    puts "About"
    puts meme.about
  end

  def prompt
    puts "Enter the number of the meme on which you'd like more information, or enter 'list memes' to list memes, or enter 'exit' to exit program."
  end

def exit
  exit
end

def goodbye
  puts "Goodbye."
end

end
