require "pry"


# def word_substituter(string)
#     tweet_array = string.split
#   new_words_array = dictionary.values
  
#     symbol_keys = dictionary.keys
#   old_words_array = symbol_keys.map {|x| x.to_s}
   
#   i = 0
#   while i < tweet_array.length
#     y = 0
#     while y < old_words_array.length
  
#       if tweet_array[i] == old_words_array[y]
#         tweet_array[i].replace(new_words_array[y])
#       end
#     y += 1
#     end
#     i += 1
#   end
# tweet_array.join(" ")
# end




def dictionary 

words = {
  "hello": "hi", 
  "to": "2",
  "two": "2",
  "too": "2",
  "for": "4",
  "For": "4",
  "four": "4",
  "be": "b",
  "you": "u",
  "at": "@",
  "and": "&"
}
end


def word_substituter(string)
  tweet_array = string.split

  dictionary.map {|key, val|
    i = 0
    while i < tweet_array.length 
      if tweet_array[i] == key.to_s 
      
        tweet_array[i].replace(val)

      end
      i += 1
    end
  }
  tweet_array.join(" ")
end


def bulk_tweet_shortener(multiple_tweets)
  
  multiple_tweets.map {|x| 
   puts word_substituter(x)
  }
  
end



def selective_tweet_shortener(string)
 
 if string.length > 140 
   word_substituter(string)
 else
   string
 end

end 

  
  
def shortened_tweet_truncator(string)
  shortened_string = word_substituter(string)
  
  if shortened_string.length > 140
    chopped_string = shortened_string[1..140]
  else 
    shortened_string
  end
  
 
end
  
  
  
  
  
  
  




