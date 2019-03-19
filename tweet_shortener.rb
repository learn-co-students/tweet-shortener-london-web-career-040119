require 'pry'

def dictionary
  dictionary = {
    "too" => "2",
    "to" => "2",
    "two" =>"2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(tweet)

  shortened_tweet = []

  tweet.split().collect do |word|
    words_to_change = dictionary.keys
    if words_to_change.include?(word.downcase)
      word = dictionary[word.downcase]
      shortened_tweet << word
    else
      shortened_tweet<< word
    end
  end
  shortened_tweet.join(" ")
end
