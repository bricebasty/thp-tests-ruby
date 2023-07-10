def translate (string)
  vowels = %w{a e i o u}
  string.gsub(/(\A|\s)\w+/) do |word|
    word.strip!
    while !vowels.include?(word[0]) || (word[0] == 'u' && word[-1] == 'q')
      word += word[0]
      word = word[1..-1]
    end
    word = ' ' + word + 'ay'
  end.strip
end