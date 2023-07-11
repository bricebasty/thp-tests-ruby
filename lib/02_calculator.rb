# frozen_string_literal: true

# Définition de la méthode "add" qui prend deux paramètres "number1" et "number2" et renvoie leur somme.
def add(number1, number2)
  number1 + number2
end

# Définition de la méthode "subtract" qui prend deux paramètres "number1" et "number2" et renvoie leur différence.
def subtract(number1, number2)
  number1 - number2
end

# Définition de la méthode "sum" qui prend un paramètre "array" (un tableau) et renvoie la somme de tous les éléments du tableau.
def sum(array)
  array.sum
end

# Définition de la méthode "multiply" qui prend deux paramètres "number1" et "number2" et renvoie leur produit.
def multiply(number1, number2)
  number1 * number2
end

# Définition de la méthode "power" qui prend deux paramètres "number1" et "number2" et renvoie "number1" élevé à la puissance "number2".
def power(number1, number2)
  number1**number2
end

# Définition de la méthode "factorial" qui prend un paramètre "number" et renvoie la factorielle de ce nombre.
def factorial(number)
  result = 1
  while number.positive?
    result *= number
    number -= 1
  end
  result
end
