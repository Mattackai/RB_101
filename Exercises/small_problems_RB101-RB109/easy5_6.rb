def word_sizes(string)
  result = Hash.new(0)
  array = string.split
  array.each do |word|
    result[word.size] += 1
  end
  result
end

print word_sizes('Four score and seven.')