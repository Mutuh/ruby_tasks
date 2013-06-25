class RPNCalculator
attr_accessor :calculator

def initialize
  @calculator = []
end

def push(number)
  @calculator << number
end

def check(number = 2)
  raise "calculator is empty" if @calculator.size < number
end

def plus
  check
  @calculator << @calculator.pop + @calculator.pop
end

def minus
  check
  @calculator << @calculator.pop - @calculator.pop
end

def divide
  check
  @calculator << @calculator.pop.to_f / @calculator.pop
end

def times
  check
  @calculator << @calculator.pop * @calculator.pop
end

def value
  @calculator.last
end

def tokens(string)
  token = []
  string.split.collect do |char|
  if char =~ /[- + \/ *]/
    token << :"#{char}"
  else
    token << char.to_f
  end
  end
  token
end

def evaluate(string)
  tokens(string).each do |char|
  case char
  when :+
    self.plus
  when :-
    self.minus
  when :/
    self.divide
  when :*
    self.times
  else
    self.push(char)
  end
  end

  self.value
end

end