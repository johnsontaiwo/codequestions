def reverse!(string, left_index, right_index)
  until left_index > right_index
    string[left_index], string[right_index] = string[right_index], string[left_index]
    left_index  += 1
    right_index -= 1
  end
end


def reverse_words!(message)
  
 reverse!(message, 0, message.length-1)
 word_left_index = 0
 for i in 0..message.length
  if (message[i] == ' ') || (i == message.length)
    reverse!(message, word_left_index, i-1)
  word_left_index = i + 1
  end
 end
end
 

# message = "the most beautiful woman on earth"
# reverse_words!(message)
