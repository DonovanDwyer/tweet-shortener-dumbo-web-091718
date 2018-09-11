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
  tweet.map do |word|
    dictionary.map do |key, value|
      if word.to_s == key.to_s
        word = value
        pry.binding
      end
    end
  end
  tweet.join(" ")
end

#pry.binding