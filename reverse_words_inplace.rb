# Problem
# You're working on a secret team solving coded transmissions.

# Your team is scrambling to decipher a recent message, worried it's a plot to break into a major European National Cake Vault. The message has been mostly deciphered, but all the words are backward! Your colleagues have handed off the last step to you.

# Write a method reverse_words!() that takes a message as a string and reverses the order of the words in place. ↴

# For example:

#   message = 'cake pound steal'

# reverse_words!(message)

# puts message
# # prints: 'steal pound cake'

# When writing your method, assume the message contains only letters and spaces, and all words are separated by one space.


# Solution

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
