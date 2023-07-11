# frozen_string_literal: true

# Définition de la méthode "translate" qui prend une chaîne de caractères "string" en paramètre
# et renvoie la chaîne de caractères traduite en pig latin, en utilisant la méthode "translate_word" pour chaque mot
def translate(string)
  string.gsub(/(\A|\s)\w+/) { |word| translate_word(word) }.strip
end

# Définition de la méthode "translate_word" qui prend un mot "word" en paramètre
# et renvoie le mot traduit en pig latin, en utilisant la méthode "process_word" pour le traitement du mot
def translate_word(word)
  word.strip!
  was_capitalized = word[0] == word[0].upcase
  word = process_word(word.downcase, was_capitalized)
  " #{word}ay"
end

# Définition de la méthode "process_word" qui prend un mot "word" et un indicateur "was_capitalized" en paramètres
# et renvoie le mot traité en pig latin, en prenant en compte les règles spécifiques
def process_word(word, was_capitalized)
  vowels = %w[a e i o u]
  word = word[1..] + word[0] while !vowels.include?(word[0]) || (word[0] == 'u' && word[-1] == 'q')
  word[0] = word[0].upcase if was_capitalized
  word
end
