# Problem
# My cake shop is so popular, I'm adding some tables and hiring wait staff so folks can have a cute sit-down cake-eating experience.

# I have two registers: one for take-out orders, and the other for the other folks eating inside the cafe. All the customer orders get combined into one list for the kitchen, where they should be handled first-come, first-served.

# Recently, some customers have been complaining that people who placed orders after them are getting their food first. Yikes—that's not good for business!

# To investigate their claims, one afternoon I sat behind the registers with my laptop and recorded:

# The take-out orders as they were entered into the system and given to the kitchen. (take_out)
# The dine-in orders as they were entered into the system and given to the kitchen. (dine_in)
# Each customer order as it was finished by the kitchen. (served_orders)
# Given all three arrays, write a method to check that my service is first-come, first-served. All food should come out in the same order customers requested it.

# We'll represent each customer order as a unique integer.








# Solution

def first_come_first_served?(take_out, dine_in, served_orders)

    dine_in_start_index  = 0
    take_out_start_index = 0
    
    served_orders.each do |order|
      if dine_in.length - 1 >= dine_in_start_index && order == dine_in[dine_in_start_index]
       dine_in_start_index += 1
      elsif take_out.length - 1 >= take_out_start_index && order == take_out[take_out_start_index]
       take_out_start_index += 1
      else
      return false
      end
    end
  return true
end
  
      
        
 