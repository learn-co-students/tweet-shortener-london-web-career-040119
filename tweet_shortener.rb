def dictionary 
  hash_of_words = {
    "Hello" => "hi",
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
}
end

def word_substituter (tweet)
  array_of_words = tweet.split(" ")
  array_of_words.each_with_index do |words,index|
    dictionary.keys.each do |x|
      if x == words.downcase
      array_of_words[index] = dictionary[x]
      end
    end
  end
array_of_words.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + "..."
  else
    word_substituter(tweet)
  end
end