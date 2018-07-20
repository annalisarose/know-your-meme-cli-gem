require 'pry'

class KnowYourMeme::CLI

def call
  puts "Top 50 Most Popular Memes:"
  KnowYourMeme::Scraper.scrape_memes
  list_memes
  menu
  goodbye
end

def list_memes
  memes = KnowYourMeme::Meme.all

  memes.each.with_index(1) do |meme, index|
   puts "#{index}. #{meme.name}"
   binding.pry
 end
end

def menu
  input = nil
  while input != "exit"
    prompt
    input =  gets.strip.downcase
    case input
    when "1"
      puts "More information on 1."
    when "2"
      puts "More information on 2."
    when "list memes"
      list_memes
    when "exit"
    else
      puts "I'm not sure what you want."
      #fix this loop so it breaks when 'exit' is entered and doesn't puts this else message...
    end
  end
end

def prompt
  puts "Enter the number of the meme on which you'd like more information, or enter 'list memes' to list memes, or enter 'exit' to exit program."
end

def goodbye
  puts "Goodbye."
end

end
