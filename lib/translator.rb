# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path).each do |meaning, value|
  emoticon_hash = {"get_meaning" => {}, "get_emoticon" => {}}

  emoticons.each do |meaning, value|
    english = value[0]
    japanese = value[1]
    emoticons["get_meaning"][japanese] = meaning
    emoticons["get_emoticon"][english] = japanese
  end
 emoticons
  #emoticons = YAML.load_file(path)
  #emoticon_hash = Hash.new

  #emoticon_hash["get_emoticon"] = Hash.new
  #emoticon_hash["get_meaning"] = Hash.new

  #emoticons.each do |english_word, emoticon_set|
    #emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    #emoticon_hash["get_meaning"][emoticon_set.last] = english_word
  #emoticon_hash
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
