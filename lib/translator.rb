# require modules here
require 'yaml'
require 'pry'

def load_library
  emoticons = YAML.load_file(path)
  emoticons_hash = Hash.new

  emoticons_hash["get_emoticon"] = Hash.new
  emoticons_hash["get_meaning"] = Hash.new
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
