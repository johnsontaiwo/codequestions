# Problem

# Write an efficient method that checks whether any permutation ↴ of an input string is a palindrome. ↴

# You can assume the input string only contains lowercase letters.

# Examples:

# "civic" should return true
# "ivicc" should return true
# "civil" should return false
# "livci" should return false
# "But 'ivicc' isn't a palindrome!"

# If you had this thought, read the question again carefully. We're asking if any permutation of the string is a palindrome. Spend some extra time ensuring you fully understand the question before starting. Jumping in with a flawed understanding of the problem doesn't look good in an interview.


# Solution

require 'set'

def has_palindrome_permutation?(the_string)

  string_set = Set.new
  
  the_string.each_char do |c|
    
    if string_set.include?(the_string[c])
      string_set.delete(the_string[c] )
      else
        string_set << the_string[c] 
      end
      false
    end
    return true if string_set.length <= 1
  end



  
      
     
  
  