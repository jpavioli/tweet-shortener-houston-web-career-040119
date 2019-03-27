require 'pry'

def dictionary 
  dictionary_hash = {
     ["hello"] => "hi",
     ["to","two","too"] => "2",
     ["for","four"] => "4",
     ["be"] => "b",
     ["you"] => "u",
     ["at"] => "@",
     ["and"] => "&"
  }
end

def word_substituter(tweet_string)
  dictionary_hash = {
     ["hello"] => "hi",
     ["to","two","too"] => "2",
     ["for","four"] => "4",
     ["be"] => "b",
     ["you"] => "u",
     ["at"] => "@",
     ["and"] => "&"
  }
  new_tweet = []
  new_word = ""
  tweet_array = tweet_string.split(" ")
  tweet_array.collect do |i|
    new_word = i
    dictionary_hash.each do |a,b|
      if a.include? i.downcase
        new_word = b 
      end
    end
    new_tweet << new_word
  end
  new_tweet.join(" ")
end 

def bulk_tweet_shortener(all_tweets)
  all_tweets.each do |i|
    puts word_substituter(i)
  end
end

def selective_tweet_shortener(tweet)
  a = word_substituter(tweet)
  if tweet = nil
    nil
  else
    if a.length > 140
      puts a
    elsif a.length < 130
      puts i
    end
  end
end