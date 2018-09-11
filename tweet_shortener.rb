require "pry"

def dictionary
  dictionary = {
    :hello => "hi",
    :to => "2",
    :two => "2",
    :too => "2",
    :for => "4",
    :four => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }
end

def word_substituter(tweet_str)
  tweet = tweet_str.split(" ")
  i = 0
  while i < tweet.length
    dictionary.each do |key, val|
      if key.to_s == tweet[i]
        tweet[i] = val
      elsif key.to_s.capitalize == tweet[i]
        tweet[i] = val.capitalize
      end
    end
    i += 1
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end