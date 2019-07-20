# Problem
# In order to win the prize for most cookies sold, my friend Alice and I are going to merge our Girl Scout Cookies orders and enter as one unit.

# Each order is represented by an "order id" (an integer).

# We have our lists of orders sorted numerically already, in arrays. Write a method to merge our arrays of orders into one sorted array.

# For example:

#   my_array     = [3, 4, 6, 10, 11, 15]
# alices_array = [1, 5, 8, 12, 14, 19]

# puts merge_arrays(my_array, alices_array)
# # prints [1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19]



# Solution



def merge_arrays(array1, array2)
 
  merged_array = array1 + array2
  
  if array1.empty? 
    merged_array = array2
    elsif array2.empty?
    merged_array = array1 
  else
    starting_index = [array1[0], array2[0]].min
    merged_array[0] = starting_index
    second_index = [array1[0], array2[0]].max
    merged_array[1] = second_index
    second_to_the_last_index = [array1[-1], array2[-1]].min
    merged_array[-1] = second_to_the_last_index
    last_index = [array1[-1], array2[-1]].max
    merged_array << last_index
    remaining_elements = (array1[1..-2] + array2[1..-2]).sort
    merged_array[2..-3] = remaining_elements
   end
  merged_array
end
  
   

  
# merge_arrays([], [1, 3, 7])