require pry 

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

def word_substituter(tweet_string,dictionary_hash)
  tweet_array = tweet_string.flatten(" ")
  tweet_array.each do |i|
    dictionary_hash.each do |a,b|
      binding.pry
    end
  end
end 