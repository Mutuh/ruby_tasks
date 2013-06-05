def reverser
  yield.split(" ").map{|word| word.reverse}.join(" ")
end

def adder(amount=1)
  yield + amount
end

def repeater(amount=1)
  amount.times{yield}
end