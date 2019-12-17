#Write a method that take two arguments and returns true if exactly one argument is truthy
#false otherwise

def xor(arg, arg2)
  if arg && !arg2
    true
  elsif !arg && arg2
    true
  else
    false
  end
end

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

puts xor(5.even?, 4.even?)
puts xor(5.odd?, 4.odd?)
puts xor(5.odd?, 4.even?)
puts xor(5.even?, 4.odd?)
      