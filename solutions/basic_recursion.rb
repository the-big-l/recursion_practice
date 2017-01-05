def multiply(x, y)
  return 0 if y == 0

  x + multiply(x, y - 1)
end
