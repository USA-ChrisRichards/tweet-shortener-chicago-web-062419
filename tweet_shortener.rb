# Write your code here. 
require 'pry'
def dictionary
  dictionary = 
  {" hello " => ' hi ', 
   " too " => ' 2 ',
   " to " => ' 2 ',
   " two " => ' 2 ',
   " for " => ' 4 ',
   " four " => ' 4 ',
   " be " => ' b ',
   " you " => ' u ',
   " at " => " @ ",
   " and " => " & "
  }
end

def word_substituter(tweet_string)
  dictionary.each do |key, value|
    while tweet_string.include? key
        tweet_string[key] = value
    end
  end
  tweet_string
end

def bulk_tweet_shortener(array_tweets)
  array_tweets.map {|tweet| puts word_substituter(tweet)}
end