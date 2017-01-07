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
  return 0 if n.zero?

  (n.odd? ? 1 : 2) + unhappy_feet(n - 1)
end

def block_count(h)
  return 0 if h.zero?

  h + block_count(h - 1)
end

def sum_of_digits(n)
  return n if n < 10

  sum_of_digits(n / 10) + sum_of_digits(n % 10)
end

def count_seven(n)
  return (n == 7 ? 1 : 0) if n < 10

  count_seven(n / 10) + count_seven(n % 10)
end

def lucky_sevens(n)
  return (n == 7 ? 1 : 0) if n < 10

  (n % 1000 == 777 ? 4 : 0) + lucky_sevens(n % 10) + lucky_sevens(n / 10)
end

def power(b, n)
  return 1 if n.zero?

  b * power(b, n - 1)
end

def count_x(str)
  return (str == 'x' ? 1 : 0) if str.length <= 1

  mid = str.length / 2

  str1 = str[0...mid]
  str2 = str[mid..-1]

  count_x(str1) + count_x(str2)
end

def count_me(string)
  return (string == 'me' ? 1 : 0) if string.length <= 2

  count_me(string[0..1]) + count_me(string[1..-1])
end
