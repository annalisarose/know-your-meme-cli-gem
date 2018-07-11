class KnowYourMeme::CLI

def call
  puts "Top 50 Most Popular Memes:"
  list_memes
  menu
  goodbye
end

def list_memes
  puts "
  1. Slender Man
  2. Doge
  3. ( ͡° ͜ʖ ͡°) / Lenny Face
  "
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
    else
      puts "I'm not sure what you want."
      prompt
    end
  end
end

def prompt
  puts "Enter the number of the meme on which you'd like more information, or enter 'list memes' to list memes, or enter 'exit' to exit program."
end

def goodbye
  "Goodbye."
end

end
