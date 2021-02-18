#require modules here
require 'yaml'
require 'pry'

def load_library(yamlfile)
  # code goes here
original_emoticon_NDS=YAML.load_file(yamlfile)

    original_emoticon_NDS.each_with_object({}) do |(key,value), new_structure|
    new_structure[key]={english:original_emoticon_NDS[key][0],japanese:original_emoticon_NDS[key][1]}
    #binding.pry
    end
end

def get_english_meaning(yamlfile,japnz_emoticon)
  # code goes here
  return_value=""
  x=load_library(yamlfile)

  x.each do |key,value|
    if x[key][:japanese]==japnz_emoticon
      return_value=key
    end
      if return_value==""
        return_value="Sorry, that emoticon was not found"
      end
    #binding.pry
  end
return_value
end

def get_japanese_emoticon(yamlfile,western_emoticon)
  # code goes here
  return_value=""
  x=load_library(yamlfile)

  x.each do |key,value|
    if x[key][:english]==western_emoticon
      return_value=x[key][:japanese]
    end
      if return_value==""
        return_value="Sorry, that emoticon was not found"
      end
    #binding.pry
  end
return_value
end
