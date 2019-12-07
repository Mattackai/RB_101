statement = "The Flintstones Rock"
frequency = {}
statement.each_char do |x|
  if frequency.has_key?(x)
    frequency[x] += 1
  else
    frequency[x] = 1
  end
end
puts frequency

#Launch School answer

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end