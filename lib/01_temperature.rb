# frozen_string_literal: true

def ftoc(temp)
  (temp - 32) * 5 / 9.0 # Convertit une température de Fahrenheit à Celsius
end

def ctof(temp)
  (temp * 9.0 / 5) + 32  # Convertit une température de Celsius à Fahrenheit
end
