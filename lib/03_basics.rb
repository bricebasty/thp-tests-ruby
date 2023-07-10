# frozen_string_literal: true

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

def reverse_upcase_nolta(string)
  string.reverse.upcase.gsub(/[LAT]/, '')
end

def array_forty_two(array)
  array.include?(42)
end

def magic_array(number1)
  number1.flatten.map { _1 * 2 }.reject { _1 % 3 < 1 }.uniq.sort
end
