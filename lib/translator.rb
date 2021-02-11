require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  dict = {}
  dict["angel"] = {"english": "", "japanese": ""}
  dict["angry"] = {"english": "", "japanese": ""}
  dict["bored"] = {"english": "", "japanese": ""}
  dict["confused"] = {"english": "", "japanese": ""}
  dict["embarrassed"] = {"english": "", "japanese": ""}
  dict["fish"] ={"english": "", "japanese": ""}
  dict["glasses"] = {"english": "", "japanese": ""}
  dict["grinning"] = {"english": "", "japanese": ""}
  dict["happy"] = {"english": "", "japanese": ""}
  dict["kiss"] = {"english": "", "japanese": ""}
  dict["sad"] = {"english": "", "japanese": ""}
  dict["surprised"] = {"english": "", "japanese": ""}
  dict["wink"] = {"english": "", "japanese": ""}

  dict["angel"][:english] = emoticons["angel"][0]
  dict["angry"][:english] = emoticons["angry"][0]
  dict["bored"][:english] = emoticons["bored"][0]
  dict["confused"][:english] = emoticons["confused"][0]
  dict["embarrassed"][:english] = emoticons["embarrassed"][0]
  dict["fish"][:english] = emoticons["fish"][0]
  dict["glasses"][:english] = emoticons["glasses"][0]
  dict["grinning"][:english] = emoticons["grinning"][0]
  dict["happy"][:english] = emoticons["happy"][0]
  dict["kiss"][:english] = emoticons["kiss"][0]
  dict["sad"][:english] = emoticons["sad"][0]
  dict["surprised"][:english] = emoticons["surprised"][0]
  dict["wink"][:english] = emoticons["wink"][0]

  dict["angel"][:japanese] = emoticons["angel"][1]
  dict["angry"][:japanese] = emoticons["angry"][1]
  dict["bored"][:japanese] = emoticons["bored"][1]
  dict["confused"][:japanese] = emoticons["confused"][1]
  dict["embarrassed"][:japanese] = emoticons["embarrassed"][1]
  dict["fish"][:japanese] = emoticons["fish"][1]
  dict["glasses"][:japanese] = emoticons["glasses"][1]
  dict["grinning"][:japanese] = emoticons["grinning"][1]
  dict["happy"][:japanese] = emoticons["happy"][1]
  dict["kiss"][:japanese] = emoticons["kiss"][1]
  dict["sad"][:japanese] = emoticons["sad"][1]
  dict["surprised"][:japanese] = emoticons["surprised"][1]
  dict["wink"][:japanese] = emoticons["wink"][1]

  return dict
end


def load_libraryX(file)
  return YAML.load_file(file)
end

def get_japanese_emoticon(file, name)
  load_library(file)
  emoticons = load_libraryX(file)

  emoticons.each do |text, arr|
    if(arr[0] == name)
      return arr[1]
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(file, name)
  load_library(file)
  emoticons = load_libraryX(file)


  emoticons.each do |text, arr|
    if(arr[1] == name)
      return text
    end
  end
  return "Sorry, that emoticon was not found"

end
dict = {}
dict["angel"] = {"english": "XXX", "japanese": "YYY"}
puts dict
puts "Something GOES HERE + #{dict["angel"][:english]}"
puts load_library("./lib/emoticons.yml")
