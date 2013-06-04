def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

def sum(numbers)
  sumOfNumbers = 0
  if numbers.length > 0
  numbers.each { |number| sumOfNumbers += number }
  end
  sumOfNumbers
end

def multiply(numbers)
  multipliedNumbers = 1
  if numbers.length > 0
  numbers.each { |number| multipliedNumbers *= number }
  end
  multipliedNumbers
end

def power(first, second)
  first ** second
end

def factorial(number)
  if number <= 1
    1
  else
    number * factorial(number - 1)
  end
end