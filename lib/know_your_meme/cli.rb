require 'pry'

class KnowYourMeme::CLI

def call
  puts "Top 50 Most Popular Memes:"
  KnowYourMeme::Scraper.scrape_memes
  start
end

def start
  list_memes
  prompt
  print_meme
end

def list_memes
  memes = KnowYourMeme::Meme.all
  memes.each.with_index(1) do |meme, index|
   puts "#{index}. #{meme.name}"
 end
end

def prompt
  puts "Enter the number of the meme on which you'd like more information, enter 'list memes' to list memes, or enter 'exit' to exit program."
end

def print_meme
  input =  gets.strip.downcase
  index = input.to_i - 1
    meme = KnowYourMeme::Meme.all[index]
    KnowYourMeme::Scraper.scrape_meme_details(meme)
    puts ""
    puts "About"
    puts meme.about
    puts ""
    puts "Origin"
    puts meme.origin
    puts ""
    puts "Spread"
    puts meme.spread
  end

def exit
  exit
end

def goodbye
  puts "Goodbye."
end

end
