# frozen_string_literal: true

def add(number1, number2)
  number1 + number2
end

def subtract(number1, number2)
  number1 - number2
end

def sum(array)
  array.sum
end

def multiply(number1, number2)
  number1 * number2
end

def power(number1, number2)
  number1**number2
end

def factorial(number)
  result = 1
  while number.positive?
    result *= number
    number -= 1
  end
  result
end
