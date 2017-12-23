  @snail = []

def horizontal_snail(array, position)
	 position == "left" ? array[0] : position == "right"
end

def vertical_snail(array, position)
    snail = []
   	direction = position == "down" ? -1 : 0
    array.each {|line| snail << line[direction]}
    direction == -1 ? snail.reverse : snail
end


=begin
def snail(array)

  until snail.nil?
  horizontal(array)
  vertical(array, "down")
  horizontal()
end

end