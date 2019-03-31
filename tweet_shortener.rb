# Write your code here.
def dictionary
  dictionary ={
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)

  str_tweet=tweet.split(" ")
  str_tweet.map do |word|
  dictionary.map do |key, value|
    if word == key
      word.replace(value)
    end
  end
end
str_tweet.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length >140
    word_substituter(tweet)
  else return tweet
  end
end




def shortened_tweet_truncator(tweet)
    if word_substituter(tweet).length >140
      truncate= word_substituter(tweet).chars[0..136].push("...").join("")
    else
      word_substituter(tweet)
    end
end
