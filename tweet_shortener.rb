# Write your code here.
def dictionary
  substituted_words = {
    "hello" => "hi",
    "to"=> "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet_string)
  tweet_array = tweet_string.split(" ")
  tweet_array.each_with_index do |word, index|
    dictionary.each do |unsub_word, sub_word|
      if word.downcase == unsub_word
        tweet_array[index] = sub_word
    end
  end
end
new_tweet = tweet_array.join(" ")
new_tweet
end


def bulk_tweet_shortener(tweet_arrays)
  tweet_arrays.each{|tweet_array| puts word_substituter(tweet_array)}
end
  

def selective_tweet_shortener(tweet_string)
  if tweet_string.length > 140
    new_tweet = word_substituter(tweet_string)
  else
    new_tweet = tweet_string
  end
  new_tweet
end
    
    
def shortened_tweet_truncator(tweet_string)
  untrunc_tweet = word_substituter(tweet_string)
  if untrunc_tweet.length > 140
    new_tweet = untrunc_tweet.slice(0..136).concat("...")
  else
    new_tweet = untrunc_tweet
  end
  new_tweet
end


