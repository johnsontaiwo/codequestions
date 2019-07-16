def first_come_first_served?(take_out, dine_in, served_orders)

  # Check if we're serving orders first-come, first-served
   if served_orders.length == take_out.length + dine_in.length
      return true
    end

  false
end