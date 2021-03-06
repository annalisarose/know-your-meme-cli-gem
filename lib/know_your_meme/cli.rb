class KnowYourMeme::CLI

def call
  puts ""
  puts "Welcome to the Know Your Meme CLI."
  puts "I retrieve stats on the top 8 entries from knowyourmeme.com's 'Popular' page."
  puts ""
  KnowYourMeme::Scraper.scrape_memes
  menu
  exit
end

def menu
  list_memes
  prompt
  get_input
end

def list_memes
  puts "Top 8 Most Popular Memes:"
  puts ""
  KnowYourMeme::Meme.all.each.with_index(1) do |meme, index|
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

    if input.to_i > 0 && input.to_i <= KnowYourMeme::Meme.all.length
      index = input.to_i - 1

      meme = KnowYourMeme::Meme.all[index]

      if meme.about == nil
        KnowYourMeme::Scraper.scrape_meme_details(meme)
      end

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
      puts "Goodbye."

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

end
