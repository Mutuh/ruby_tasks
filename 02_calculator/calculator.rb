def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

def sum(numbers)
  numbers.inject(0, :+)
end

def multiply(numbers)
  numbers.inject(1, :*)
end

def power(first, second)
  first ** second
end

def factorial(number)
  number <= 1 ? 1 : number * factorial(number - 1)
end