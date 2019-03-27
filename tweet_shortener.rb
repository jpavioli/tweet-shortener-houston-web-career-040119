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
  tweet_array.each do |i|
    dictionary_hash.map do |a,b|
      if i == a.any?
        b
      end
    end
  end
  tweet_array.join(" ")
end 