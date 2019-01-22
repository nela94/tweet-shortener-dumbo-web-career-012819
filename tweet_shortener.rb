
def dictionary
   dictionary = {"hello" => "hi", "to" => 2, "two" => 2, "too" => 2, "for, four" => 4, "be" => "b", "you" => "u", "at" => "@", "and" => "&" }
end

def word_substituter(tweet)
tweet_array = tweet.split(" ")
tweet_array.map do |word|
  dictionary.each do |key, value|
    word = value if word == key
  end
  word
end.join(" ")
end

def bulk_tweet_shortener(tweets)
    new_tweet = tweets.split (" ")
    new_tweet.collect do |word|
      puts word_substituter(tweet)
  end.join(" ")
end
