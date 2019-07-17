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
  
      
        
 