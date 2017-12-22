




def solution(roman, total=0) 
numerals = {"I" => 1, "IV" => 4,"V" => 5, "IX" => 9, "X" => 10,
             "XL" => 40, "L" => 50,"XC" => 90, "C" => 100, "D" => 500, 
              "CM" => 900, "M" => 1000}

 return total if roman.length == 0
 return total += numerals[roman] if roman.length == 1

   if numerals[roman[0..1]].nil? 
        total += numerals[roman[0]]
       	roman.slice!(0,1)
   else 
        total += numerals[roman[0..1]]
      	roman.slice!(0, 2)
   end   
  total = solution(roman, total)
end

puts solution("MDCLXVI")