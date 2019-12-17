
def reverse_sentence(str)
  str.split.reverse.join(" ")
end

puts reverse_sentence('') 
puts reverse_sentence('Hello World') 
puts reverse_sentence('Reverse these words') 