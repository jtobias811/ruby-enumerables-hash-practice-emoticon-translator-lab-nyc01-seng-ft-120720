# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)

  new_hash = {}

  emoticons.each do |english_meaning, value_array|
    #binding.pry
    new_hash[english_meaning] = {}
    new_hash[english_meaning][:english] = value_array[0]
    new_hash[english_meaning][:japanese] = value_array[1]
  end
  new_hash
end


def get_japanese_emoticon(path, emoticon)
  new_hash = load_library(path)
  japanese_emoticon = new_hash["meaning"][emoticon]
  if japanese_emoticon == nil
    japanese_emoticon = "Sorry, that emoticon was not found"
  end
  japanese_emoticon
end

def get_english_meaning(path, emoticon)
  new_hash = load_library(path)
  result = new_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end
