def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(array)
  return array.sum
end

def multiply(a,b)
  return a * b
end

def power(a, b)
  return a ** b
end

def factorial(n)
  result = 1
  while n > 0
    result *= n
    n -= 1
  end
  result
end