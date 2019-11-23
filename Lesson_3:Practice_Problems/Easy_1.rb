numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

#Will puts 1, 2, 2, 3 because uniq is not a destructive method but rather returned a new method which was never called.
