
def removNb(n)
  number_list = []
  sum = (1..n).inject(0, &:+)

  lower_limit = sum / n   #I think this is the lowest number that will work
  mid_way = (lower_limit + n) / 2   #This is midway between the lowest and the top number

  (lower_limit..mid_way+1).each do |numA|
    n.downto(mid_way-1) do |numB|
      number_list << [numA, numB] if sum - (numA + numB) == numA * numB
    end
  end
  number_list
  reversed = number_list.map {|arr| arr.reverse}
  number_list + reversed
end
