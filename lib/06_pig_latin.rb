# frozen_string_literal: true

def translate(string)
  string.gsub(/(\A|\s)\w+/) { |word| translate_word(word) }.strip
end

def translate_word(word)
  word.strip!
  was_capitalized = word[0] == word[0].upcase
  word = process_word(word.downcase, was_capitalized)
  " #{word}ay"
end

def process_word(word, was_capitalized)
  vowels = %w[a e i o u]
  word = word[1..] + word[0] while !vowels.include?(word[0]) || (word[0] == 'u' && word[-1] == 'q')
  word[0] = word[0].upcase if was_capitalized
  word
end
