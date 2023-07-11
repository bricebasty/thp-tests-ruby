# frozen_string_literal: true

# Définition de la méthode "echo" qui renvoie simplement la chaîne de caractères passée en paramètre
def echo(string)
  string
end

# Définition de la méthode "shout" qui renvoie la chaîne de caractères passée en paramètre en majuscules
def shout(string)
  string.upcase
end

# Définition de la méthode "repeat" qui renvoie une chaîne de caractères répétée un certain nombre de fois
# par défaut, la chaîne est répétée deux fois, mais cela peut être spécifié avec le paramètre "times"
def repeat(string, times = 2)
  repeated = [string] * times
  repeated.join(' ')
end

# Définition de la méthode "start_of_word" qui renvoie les premiers "num" caractères de la chaîne de caractères passée en paramètre
def start_of_word(string, num)
  string[0, num]
end

# Définition de la méthode "first_word" qui renvoie le premier mot de la chaîne de caractères passée en paramètre
def first_word(string)
  string.split.first
end

# Définition de la méthode "titleize" qui renvoie une version de la chaîne de caractères passée en paramètre avec chaque mot commençant par une majuscule
# Les petits mots tels que "and", "or", "the", "over", "a" et "an" sont laissés en minuscules
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
