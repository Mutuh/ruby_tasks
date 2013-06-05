def translate_utility(string)
  allSymbols = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = allSymbols - vowels
  
  capitalized = false
  translated = ""
  
  if string == string.capitalize
  capitalized = true
  string = string.downcase
  end
  
  if vowels.include?(string[0])
    translated = string + 'ay'
  elsif string[0..1] == "qu" 
    translated = string[2..-1]+"quay"
  elsif string[0..1] == "sch" 
    translated = string[2..-1]+"schay"
	elsif consonants.include?(string[0]) && consonants.include?(string[1]) && consonants.include?(string[2])
    translated = string[3..-1] + string[0..2] + 'ay'
  elsif consonants.include?(string[0]) && consonants.include?(string[1])
    translated = string[2..-1] + string[0..1] + 'ay'
  elsif consonants.include?(string[0])
    translated = string[1..-1] + string[0] + 'ay'
  else
    translated = string
  end
  
  unless capitalized
    translated
  else
    translated.capitalize
  end
  
end

def translate(string)
  string.split.map(&method(:translate_utility)).join(' ')
end