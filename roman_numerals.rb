
def two_numerals_to_number(digits)
 numerals = {"IV" => 4, "IX" => 9, "XL" => 40, "XC" => 90, "CM" => 900, }
  return   false    if  numerals[digits].nil?
  numerals[digits]
end

def single_numeral_to_number(digit)
   numerals = {"I" => 1, "IV" => 4,"V" => 5, "X" => 10, "L" => 50, "C" => 100, 
   	          "D" => 500, "CM" => 900, "M" => 1000} 
   return   false    if  numerals[digit].nil?
   numerals[digit]           
end

def numerals_to_number(roman, total=0) 
 
 return total if roman.length == 0
 return total += single_numeral_to_number(roman) if roman.length == 1
 
 next_digits = two_numerals_to_number(roman[0..1]) 
 if next_digits == false 
 	 total += single_numeral_to_number(roman[0]) 
 	roman.slice!(0, 1)
 else 
    total += next_digits
     roman.slice!(0,2)
 end
 total = numerals_to_number(roman, total)
end

puts numerals_to_number("MDCLXVI")