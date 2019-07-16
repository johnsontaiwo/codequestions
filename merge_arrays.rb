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