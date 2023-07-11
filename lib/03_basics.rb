# frozen_string_literal: true

# Définition de la méthode "who_is_bigger" qui prend trois nombres en paramètres et retourne une chaîne de caractères indiquant le plus grand nombre détecté
def who_is_bigger(number1, number2, number3)
  if [number1, number2, number3].any?(&:nil?)
    'nil detected'
  elsif number1 > number2 && number1 > number3
    'a is bigger'
  elsif number2 > number1 && number2 > number3
    'b is bigger'
  else
    'c is bigger'
  end
end

# Définition de la méthode "reverse_upcase_nolta" qui prend une chaîne de caractères en paramètre, l'inverse, la met en majuscules, puis supprime les lettres 'L', 'A' et 'T'
def reverse_upcase_nolta(string)
  string.reverse.upcase.gsub(/[LAT]/, '')
end

# Définition de la méthode "array_forty_two" qui prend un tableau en paramètre et renvoie true si le nombre 42 est présent dans le tableau, sinon renvoie false
def array_forty_two(array)
  array.include?(42)
end

# Définition de la méthode "magic_array" qui prend un tableau en paramètre, le transforme en un tableau unidimensionnel, multiplie chaque élément par 2,
# supprime les éléments qui ne sont pas divisibles par 3, supprime les doublons et trie le tableau de manière croissante
def magic_array(number1)
  number1.flatten.map { _1 * 2 }.reject { _1 % 3 < 1 }.uniq.sort
end
