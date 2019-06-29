def reverse!(string)

  left_index = 0
  right_index = string.length - 1
 
  until left_index > right_index
    string[left_index], string[right_index] = string[right_index], string[left_index]
    left_index += 1
    right_index -= 1
  end
end