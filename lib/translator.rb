require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  emote_hash = Hash.new
  emoticons.each do |key, value|
    emote_hash[key] = {:english => value[0], :japanese => value[1]}
  end
  emote_hash
end

def get_english_meaning(path, emoticon)
  emote_translations = load_library(path)
  apology = "Sorry, that emoticon was not found"
  emote_translations.each do |key, value|
    if value[:japanese] == emoticon
      return key
    end
  end
  apology
end

def get_japanese_emoticon(path, emoticon)
  emote_translations = load_library(path)
  apology = "Sorry, that emoticon was not found"
  emote_translations.each do |key, value|
    if value[:english] == emoticon
      return value[:japanese]
    end
  end
  apology  
end
