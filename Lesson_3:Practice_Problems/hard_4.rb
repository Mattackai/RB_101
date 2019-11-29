def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  loop do
    if dot_separated_words.size != 4
      puts "Invalid IP address"
    else
      break
    end
  end
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end


#Not returning a false condition
#Not handling the exception of invalid lengths of IP addresses (4.5.5) (1.2.3.4.5 )