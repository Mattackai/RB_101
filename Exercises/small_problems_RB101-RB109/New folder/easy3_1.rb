puts "Please enter 6 numbers"
nums = []
counter = 0

loop do 
  nums << gets.chomp.to_i
  counter += 1
  break if counter == 5
end

final_num = gets.chomp.to_i

if nums.include?(final_num)
  puts "#{final_num} is included in #{nums}"
else
  puts "#{final_num} is NOT included in #{nums}"
end