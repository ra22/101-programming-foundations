def digit_list(number)
  
  digits = []
  number.to_s.split(//)

end

puts digit_list(12345) == [1, 2, 3, 4, 5]
