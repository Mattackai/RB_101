words = "the flintstones rock"

def titleize(str)
  arr = str.split
  arr.each do |x|
    x.capitalize!
  end
  arr.join(" ")
end

puts titleize(words)

#Launch School answer...
words.split.map { |word| word.capitalize }.join(' ')