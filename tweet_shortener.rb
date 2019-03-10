require 'pry'

def dictionary
  {
    "hello" => "hi",
    "two" => "2",
    "to" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(tweet)
  tweet.split(' ').collect do |word|
    dictionary.has_key?(word.downcase) ? dictionary[word.downcase] : word
  end.join(' ')
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  shortened_tweet.length > 140 ? "#{shortened_tweet[0..136]}..." : shortened_tweet
end