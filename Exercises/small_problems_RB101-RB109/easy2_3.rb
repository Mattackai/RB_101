#Complete a simple tip calculator
#Program should prompt for a bill and tip rate
#Must compute the tip and then display both the tip and the total bill.

puts "Please enter the total amount of your bill"
bill = gets.chomp.to_f

puts "Please enter the percentage you wish to tip as a number"
tip = (gets.chomp.to_f / 100 * bill)

total = (bill + tip)

puts "You should leave #{format('%0.2f', tip)} as a tip. Your total bill is #{format('%0.2f', total)}."
