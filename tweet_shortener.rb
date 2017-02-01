# Write your code here.
require "pry"
def dictionary 
  {"hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2', 
  "for" => '4', 
  "For" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@" ,
  "and" => "&"}
end

def word_substituter(long_tweet)
  dict=dictionary()
  dict_words=dict.keys
  long_tweet_array = long_tweet.split
  #iterate through all words in tweet
  long_tweet_array.each_with_index do |tweet_word, index|
  #check to see if word is in the hash
  #if the word is in the hash  replace that word with the value of the key
    if dict_words.include?(tweet_word)
      long_tweet_array[index]=dict[tweet_word]
    end
  end
  short_tweet=long_tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  selective_tweet = selective_tweet_shortener(tweet)
  if selective_tweet.length<=140
    selective_tweet
  else
    selective_tweet[0..136] + "..."
  end
end

  

  