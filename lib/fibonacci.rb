# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  if n == nil || n < 0
    raise ArgumentError
  elsif  n == 0
    return 0
  end

  previous_number = 0
  current_number = 1
  next_number = current_number + previous_number
  i = 1
  while i < n
    next_number = previous_number + current_number
    previous_number = current_number
    current_number = next_number
    i += 1
  end
  return next_number
end
