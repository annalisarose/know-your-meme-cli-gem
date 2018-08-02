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
  exit
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

    if input != "exit"
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
      puts ""
      prompt
      get_input

    elsif input == "exit"
      goodbye

    elsif input == "list memes"
      list_memes
      prompt
      get_input

    else
      puts "I'm not sure what you want."
      prompt
      get_input
    end
end

def goodbye
  puts "Goodbye."
end

end
