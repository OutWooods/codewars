  @snail = []

def horizontal_add(array, position)
	if position == left
    @snail << array.delete_at(0)
   else 
   	@snail << array.delete_at(0).reverse!
   end
   @snail.flatten!
   array
end

def vertical_add(array, position)
   direction = {"down" => -1, "up" => 0}
   trail = []
   array.each{|line| trail << line.slice!(direction[position], 1)}
   @snail += position == "up" ?  trail.reverse! : trail
   @snail.flatten!
   array
end


=begin
def snail(array)

  until snail.nil?
  horizontal(array)
  vertical(array, "down")
  horizontal()
end

