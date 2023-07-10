def translate (string)
  vowels = %w{a e i o u}
  string.gsub(/(\A|\s)\w+/) do |word|
    word.strip!
    was_capitalized = word[0] == word[0].upcase
    while !vowels.include?(word[0].downcase) || (word[0].downcase == 'u' && word[-1].downcase == 'q')
      word += word[0]
      word = word[1..-1]
    end
    word = word.downcase
    word[0] = word[0].upcase if was_capitalized
    word = ' ' + word + 'ay'
  end.strip
end
