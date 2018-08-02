# 1. != means not equal to, and used as a conditional

# 2. put ! before something, like !user_name
user_name = 'raidy'
puts !user_name # evaluates true or false?

# 3. put ! after something, like words.uniq!
user_name.upcase!
puts user_name

# 4. put ? before something
puts ?user_name: :end

# 5. put ? after something
puts user_name.start_with?('R')

# 6. put !! before something, like !!user_name
puts !!user_name # evaluates true or false?