require 'pry'

class KnowYourMeme::CLI

def call
  puts "Welcome to the Know Your Meme CLI."
  menu
end

def menu
  list_memes
  prompt
  get_input
  goodbye
end

def list_memes
  puts "Top 8 Most Popular Memes:"
  KnowYourMeme::Scraper.scrape_memes
  memes = KnowYourMeme::Meme.all

  memes.each.with_index(1) do |meme, index|
   puts "#{index}. #{meme.name}"
 end
end

def prompt
  puts "Enter the number of the meme on which you'd like more information, or enter 'list memes' to list memes, or enter 'exit' to exit program."
end

def get_input
    input =  gets.strip.downcase
    index = input.to_i - 1

    meme = KnowYourMeme::Meme.all[index]
    KnowYourMeme::Scraper.scrape_meme_details(meme)
    puts "About"
    puts meme.about
  end

def exit
  exit
end

def goodbye
  puts "Goodbye."
end

end
