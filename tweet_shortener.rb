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
  tweet_array = tweet_string.split(" ")
  tweet_array.collect do |i|
  tweet = []
    dictionary_hash.each do |a,b|
      if a.include? i
        tweet << b 
      else
        tweet << i
      end
    end
  end
  tweet.join(" ")
end 