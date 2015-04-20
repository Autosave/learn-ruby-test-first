require "spec_helper"

def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array_of_numbers)
  array_of_numbers.inject(0) { |sum, number| sum + number }
end

def multiply(x, *y)
  y.inject(x) { |result, number| result * number}
end

def power(base, exp)
  base ** exp
end

def factorial(number)
  result = 1
  if number == 0
    result
  else
    while number > 0
      result *= number
      number -= 1
    end
    result
  end
end

