# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)

  new_hash = {}

  emoticons.each do |english_meaning, value_array|
    binding.pry
    english = value[0]
    japanese = value[1]
    new_hash["get_meaning"][japanese] = meaning
    new_hash["get_emoticon"][english] = japanese
    binding.pry
  end
  emoticon_hash
end


def get_japanese_emoticon(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end

def get_english_meaning(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found"
  end
  result
end
