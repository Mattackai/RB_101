puts "Please enter a positive integer."
number = gets.chomp.to_i

puts "Would you like the sum or the product?"
answer = gets.chomp

case answer
  when "sum"
    total = (1..(number)).inject(:+)
  when "product"
    total = (1..(number)).inject(1, :*)
  else
    puts "Please enter 'sum' or 'product'"
  end

puts total