require 'pry'

class KnowYourMeme::CLI

def call
  puts "Welcome to the Know Your Meme CLI."
  puts ""
  puts "Top 8 Most Popular Memes:"
  KnowYourMeme::Scraper.scrape_memes
  menu
end

def menu
  list_memes
  prompt
  get_input
  exit
end

def list_memes
  memes = KnowYourMeme::Meme.all

  memes.each.with_index(1) do |meme, index|
   puts "#{index}. #{meme.name}"
 end
end

def prompt
  puts ""
  puts "Enter the number of the meme on which you'd like more information, or enter 'list memes' to list memes, or enter 'exit' to exit program."
end

def reset
  prompt
  get_input
end

def get_input

    input =  gets.strip.downcase

    if input.to_i > 0
      index = input.to_i - 1

      meme = KnowYourMeme::Meme.all[index]
      KnowYourMeme::Scraper.scrape_meme_details(meme)

      puts ""
      puts meme.name
      puts ""
      puts "About"
      puts meme.about
      puts ""
      puts "Origin"
      puts meme.origin
      puts ""
      puts "Spread"
      puts meme.spread
      reset

    elsif input == "exit"
      puts ""
      goodbye

    elsif input == "list memes"
      puts ""
      list_memes
      reset

    else
      puts ""
      puts "I'm not sure what you want."
      reset
    end

end

def goodbye
  puts "Goodbye."
end

end
