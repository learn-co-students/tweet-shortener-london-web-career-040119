# Write your code here.


=begin
"Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

"Hey guys, can anyone teach me how (2) (b) cool? I really want (2) b the best (@) everything, u know what I mean? Tweeting is super fun u guys!!!!"

=end

def word_substituter(tweet)
  tweet_one_short = [] #Empty array to push the tweet in
  tweet_one = tweet.split(" ") #Variable is created to convert the tweet into an array
  tweet_one.each do |word| #Iteration is needed to convert the words into shortform
    case word.downcase
    
    when "to", "too"
      tweet_one_short << "2"
      
    when "be"
      tweet_one_short << "b"
      
    when "at"
      tweet_one_short << "@"
      
    when "you" 
      tweet_one_short << "u"
    
    when "and"
      tweet_one_short << "&"
    
    when "for"
      tweet_one_short << "4"
      
    else
      tweet_one_short << word
    end
  end
    tweet_one_short.join(" ") # Convert the array back into a string format
  
end


def bulk_tweet_shortener(tweets) #shortens each tweet hence use tweets as an arguement for better clarification
  tweets.each do |tweet|
    tweet = word_substituter(tweet)
    puts "#{tweet}"
  end
end



def selective_tweet_shortener(tweet) #shortens tweet that are more than 140 characters
  if tweet.length > 140 #if tweet is over 140 chracters it will apply the word_substituter method if not just return tweet
    
    word_substituter(tweet)
    
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet) #shorten by chopping of the end of the tweet
  tweet = selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet[0..136] + "..."
    
  else
    tweet
  end
end



