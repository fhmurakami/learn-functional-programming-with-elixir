number_compare = fn
  number, other_number when number >= other_number -> number
  _, other_number -> other_number
end

number_compare.(1, 2) # returns 2
