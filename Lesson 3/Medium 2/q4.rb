def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" # pumpkinsrutabagga, 
puts "My array looks like this now: #{my_array}" # pumpkins, With the Array#= assignment, our literal ['pumpkins', 'rutabaga'] array is a new object, and we are assigning it to the local variable an_array_param.