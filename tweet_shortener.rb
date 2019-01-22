
def dictionary
   dictionary = {"hello" => "hi", "to" => 2, "two" => 2, "too" => 2, "four" => 4, "for" => 4, "be" => "b", "you" => "u", "at" => "@", "and" => "&" }
end

def word_substituter(tweet)
tweet_array = tweet.split(" ")
tweet_array.map do |word|
  if dictionary.keys.include?(word.downcase)
    word = dictionary[word.downcase]
  else
  word
end
end.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
      puts word_substituter(tweet)
  end
end
