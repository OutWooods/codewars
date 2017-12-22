def encode_rail_fence_cipher(str, num_rails)
  store = []
  num_rails.times{store << []}
  index = 0   
  up_down = "yes"
  str.each_char do |letter|
      store[index] << letter
   up_down == "yes" ? index += 1 : index -= 1
      index, up_down = 1, "yes" if index == -1 
      index, up_down = num_rails - 2, "no" if index == num_rails 
  end
  store.flatten!.join("")
end

def decode_rail_fence_cipher(str, num_rails)
store = []
sequence = 2*(num_rails - 1)
start_length = (str.length + sequence - 1) / sequence
end_length = (str.length + num_rails - 2) / sequence
excess = (str.length + sequence - 1) % sequence
middle_rows = (str.length - (start_length + end_length - excess)) / (num_rails - 2) 
middle_rows, excess = middle_rows + 1, excess -1 if excess >= num_rails - 1
store << str.slice!(0, start_length).split("")

until str.length == end_length
 if excess  == 0 
  store << str.slice!(0, middle_rows).split("")
elsif excess >= num_rails - 1
   store << str.slice!(0, middle_rows + 2).split("")
   excess -= 2
 else
    store << str.slice!(0, middle_rows + 1).split("")
    excess -= 1
  end
end
store << str.split("")
print store
puts middle_rows  
letter = store[0][0]
solution = ""
up_down = "yes"
index = 0
until letter.nil?
      solution += letter
      store[index].shift
   up_down == "yes" ? index += 1 : index -= 1
      index, up_down = 1, "yes" if index == -1 
      index, up_down = num_rails - 2, "no" if index == num_rails 
      letter = store[index][0]
  end
solution
end
