require 'pry'
require 'yaml'


def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_hash = {}
  
  emoticons.each do |key, value|
    new_hash[key] = {}
    new_hash[key][:english] = value.first
    new_hash[key][:japanese] = value.last
  end
  
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  target_emoticon = library.keys.find do |key|
    library[key][:english] == emoticon
  end
  target_emoticon ? library[target_emoticon][:japanese] : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  
  target_emoticon = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end
  target_emoticon ? target_emoticon : "Sorry, that emoticon was not found"
end