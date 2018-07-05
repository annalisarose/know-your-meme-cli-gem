class KnowYourMeme::CLI

def call
  puts "Top 50 Most Popular Memes:"
  list_memes
  menu
end

def list_memes
  puts "
  1. Slender Man
  2. Doge
  3. ( ͡° ͜ʖ ͡°) / Lenny Face
  "
end

def menu
  puts "Enter the number of the meme you'd like more information on:"
end

end
