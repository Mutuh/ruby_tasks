class Fixnum

def in_words

decade = {
  0 => 'zero',
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine'
}

ten_thirteen = {
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen'
}

tens = {
  20 => 'twenty',
  30 => 'thirty',
  40 => 'forty',
  50 => 'fifty',
  60 => 'sixty',
  70 => 'seventy',
  80 => 'eighty',
  90 => 'ninety'
}

case self 
when 0..9
  decade[self]
when 10..13
  ten_thirteen[self]
when 14, 16, 17, 19
  "#{decade[self - 10]}teen"
when 15
  'fifteen'
when 18
  'eighteen'
when 20, 30, 40, 50 , 60, 70, 80, 90
  tens[self]
when (20..99)
  tens = (self / 10) * 10
  decade = self - tens
  "#{tens.in_words} #{decade.in_words}"
when (100..999)
  hundreds = self / 100
  rest = self - (hundreds * 100)
  if rest > 0
	"#{hundreds.in_words} hundred #{rest.in_words}"
  else
	"#{hundreds.in_words} hundred"
  end
when (1000..999999)
  thousands = self / 1000
  rest = self - (thousands * 1000)
  if rest > 0
    "#{thousands.in_words} thousand #{rest.in_words}"
  else
	"#{thousands.in_words} thousand"
  end
when (10000000..999999999)
  millions = self / 1000000
  rest = self - (millions * 1000000)
  if rest > 0
	"#{millions.in_words} million #{rest.in_words}"
  else
	"#{millions.in_words} million"
  end
when (1000000000..999999999999)
  billions = self / 1000000000
  rest = self - (billions * 1000000000)
  if rest > 0
	"#{billions.in_words} billion #{rest.in_words}"
  else
	"#{billions.in_words} billion"
  end
when (1000000000000..1_888_259_040_036)
  trillions = self / 1000000000000
  rest = self - (trillion * 1000000000000)
  if rest > 0
	"#{trillions.in_words} trillion #{rest.in_words}"
  else
	"#{trillions.in_words} trillion"
  end
  
end
end

end