project structure:
a cli for retrieving stats on the first 8 memes on knowyourmeme.com's all-time popular page.
cli greets, gives short self-explanation
user types in show memes or exit
show list of memes
user picks a meme, list memes, or exit
return the stats, list, or exit based on user input

memes:
  -- must initialize with a name
  -- must initialize with a url
  -- have an optional about, to be added after second-level scraping
  -- have an optional origin, to be added after second-level scraping
  -- have an optional spread, to be added after second-level scraping
