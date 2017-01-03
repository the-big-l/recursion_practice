def multiply(x, y)
  return 0 if y < 1
  return x if y == 1

  x + multiply(x, y - 1)
end
