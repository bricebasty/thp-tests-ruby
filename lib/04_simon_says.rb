# frozen_string_literal: true

def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 2)
  repeated = [string] * times
  repeated.join(' ')
end

def start_of_word(string, num)
  string[0, num]
end

def first_word(string)
  string.split.first
end

def titleize(string)
  little_words = %w[and or the over a an but]

  words = string.split.map.with_index do |word, index|
    if index.zero? || !little_words.include?(word.downcase)
      word.capitalize
    else
      word.downcase
    end
  end

  words.join(' ')
end
