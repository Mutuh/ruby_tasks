def translate(string)
  string.gsub(/\b\w+\b/) {|substring|
    if substring == substring.capitalize
    capitalized = true
	substring = substring.downcase
	end
    stringend=substring.slice!(/\b(qu|[^aeiou])+/)
	if capitalized
      "#{substring}#{stringend}ay".capitalize
	else
      "#{substring}#{stringend}ay"
    end
  }
end