
def dictionary
   dictionary = {"hello" => "hi", "to" => 2, "two" => 2, "too" => 2, "for, four" => 4, "be" => "b", "you" => "u", "at" => "@", "and" => "&" }
end
def word_substituter(tweet)
  new_tweet = tweet.split.map! do |word|
    dictionary(word)
  end
  new_tweet.join(" ")
end
