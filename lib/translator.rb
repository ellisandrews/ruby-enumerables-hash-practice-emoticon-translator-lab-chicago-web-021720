require 'yaml'

def load_library(file_path)
  emoticon_hash = YAML.load_file(file_path)

  result = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }

  emoticon_hash.each do |meaning, emoticons|
    result['get_meaning'][emoticons[1]] = meaning  # Add Japanese emoticons
    result['get_emoticon'][emoticons[0]] = emoticons[1]  # Add American emoticons
  end

  result
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end