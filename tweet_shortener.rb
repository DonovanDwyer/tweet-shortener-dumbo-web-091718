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
    tweet[i] = "balls"
    i += 1
  end
  tweet.join(" ")
end
#pry.binding