def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, amount=2)
  strings = ""
  for i in 1..amount do
    strings += string+" "
  end
  strings.strip
end

def start_of_word(word, amount)
  word[0, amount]
end

def first_word(string)
  string.split[0..0].join(" ")
end

def titleize(string)
  string.split.each_with_index{
  |word, i|
  
  if !['and', 'the', 'over'].include?(word) || i == 0
   word.capitalize!
  end
  }.join(' ')
end