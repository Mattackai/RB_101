def word_sizes(string)
  result = Hash.new(0)
  string = string.gsub(/[^a-z ]/i, '').squeeze(' ')
  array = string.split
  array.each do |word|
    result[word.size] += 1
  end
  result
end


print word_sizes('Four score and seven.') 
print word_sizes('Hey diddle diddle, the cat and the fiddle!') 
print word_sizes("What's up doc?") 
print word_sizes('') 