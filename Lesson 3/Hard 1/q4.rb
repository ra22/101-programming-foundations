def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  unless dot_separated_words.size == 4
    return false
  else
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
    return true
  end
end


puts dot_separated_ip_address?("4.5.5")
puts dot_separated_ip_address?("1.2.3.4.5")
puts dot_separated_ip_address?("1.2.3.4")