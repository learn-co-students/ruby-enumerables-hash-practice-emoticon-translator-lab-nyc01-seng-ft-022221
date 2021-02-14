require "yaml"
require 'pry'

def load_library(path)
  emoji = YAML.load_file(path)
  emoji_hash = {}
  emoji.each do |word, emojis|
    emoji_hash[word] = {}
    emoji_hash[word][:english] = emojis[0]
    emoji_hash[word][:japanese] = emojis[1]
  end
  emoji_hash
end

# look through the entire hash
# see if we can find the key that is equal to emoji we are looking for using the emoticon argument
# if we find that key, we are going to return the japanese value

def get_english_meaning(path, emoticon)
  emoji = YAML.load_file(path)
  emoticon_hash = load_library(path)
  emoticon_hash.each do | key, translation |
    if emoticon == translation[:japanese]
      return key
    end
  end
   'Sorry, that emoticon was not found'
end

def get_japanese_emoticon(path, emoticon)
  emoji = YAML.load_file(path)
  emoticon_hash = load_library(path)
  emoticon_hash.each do | key, translation |
    if emoticon == translation[:english]
      return translation[:japanese]
    end
  end
  'Sorry, that emoticon was not found'
end
