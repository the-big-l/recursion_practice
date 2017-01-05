def factorial(n)
  return 1 if n.zero?

  n * factorial(n - 1)
end

def happy_feet(n)
  return 0 if n.zero?

  2 + happy_feet(n - 1)
end

def multiply(x, y)
  return 0 if y.zero?

  x + multiply(x, y - 1)
end

def fibonacci(n)
  return 0 if n <= 1
  return 1 if n == 2

  fibonacci(n - 1) + fibonacci(n - 2)
end

def unhappy_feet(n)
end

def triangle(n)
end

def sumDigits
end

def count7(n)
end
def count8(n)
end

def powerN(n)
end

def countX(n)
end
