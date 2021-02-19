# require modules here
require 'yaml'
def load_library(file)
  emoticons = YAML.load_file(file)
  new_emoticons = {}
  emoticons.each do |key,value|
    new_emoticons[key] = { english: value[0], japanese: value[1]}
  end
  new_emoticons
end

def get_japanese_emoticon(file,english_emoticon)
  emoticons = load_library(file)
  result = 'Sorry, that emoticon was not found'
  emoticons.each{|key,value| value[:english] == english_emoticon ? result = value[:japanese] : ''  }
  result
end

def get_english_meaning(file,japnese_emoticon)
  emoticons = load_library(file)
  result = 'Sorry, that emoticon was not found'
  emoticons.each{|key,value| value[:japanese] == japnese_emoticon ? result = key : ''  }
  result
end
