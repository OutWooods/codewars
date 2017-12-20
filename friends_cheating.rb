
def removNb(n)
  number_list = []
  sum = (1..n).inject(0, &:+)
  puts sum
  low_limit = sum / n
  puts low_limit
  upper_limit = Math.sqrt(sum).to_i
   a = upper_limit
   b = upper_limit
    until (a == low_limit || b > n) 
      total = sum - (a + b)
       product = a * b
       if total == product 
         number_list << [a, b]
         a -= 1
      elsif total < product 
         a -= 1
      else 
          b += 1
      end    
    end

  other_answers = number_list.map{|arr| arr.reverse}
  answer = number_list + other_answers
  answer.sort!
end
