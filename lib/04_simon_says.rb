def echo(string)
  return string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 2)
  repeated = [string] * times
  repeated.join(' ')
end

def start_of_word(string,num)
  return string[0, num]
end

def first_word(string)
  string.split.first
end

def titleize(string)
  little_words = ["and", "or", "the", "over", "a", "an", "but"]

  words = string.split.map.with_index do |word, index|
    if index == 0 || !little_words.include?(word.downcase)
      word.capitalize
    else
      word.downcase
    end
  end

  words.join(" ")
end