

def solution(roman)
 numerals = {"I" => 1, "IV" => 4,"V" => 5, "IX" => 9, "X" => 10,
             "XL" => 40, "L" => 50,"XC" => 90, "C" => 100, "D" => 500, 
              "CM" => 900, "M" => 1000}
 total = 0             
   until roman == ""
      if numerals[roman[0..1]].nil? || roman[1].nil?
      	puts "Yes"
        total += numerals[roman[0]]
       	roman.slice!(0,1)
       else 
       	puts "no"
        total += numerals[roman[0..1]]
      	roman.slice!(0, 2)
       end
   end   
  total 
end

puts solution("MDCLXVI")