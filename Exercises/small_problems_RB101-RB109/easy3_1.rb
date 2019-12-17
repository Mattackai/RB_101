#Write a program that solicits 6 numbers from the user
#then prints a message that describes whether or not
#the 6th number appears among the first 5.

#Examples:
  #==> Enter the 1st number:
  #25
  #==> Enter the 2nd number:
  #15
  #==> Enter the 3rd number:
  #20
  #==> Enter the 4th number:
  #17
  #==> Enter the 5th number:
  #23
  #==> Enter the last number:
  #17
  #The number 17 appears in [25, 15, 20, 17, 23].

  #==> Enter the 1st number:
  #25
  #==> Enter the 2nd number:
  #15
  #==> Enter the 3rd number:
  #20
  #==> Enter the 4th number:
  #17
  #==> Enter the 5th number:
  #23
  #==> Enter the last number:
  #18
  #The number 18 does not appear in [25, 15, 20, 17, 23].

  #Prompt the user for 6 separate numbers
  #place the first 5 numbers into an array
  #Iterate through the array, comparing all of the elements
  #to the last number, checking for equality.
  #Print the result of the comparison.


  puts "Please enter 6 whole numbers"
  arr = []
  5.times do |num|
    arr << (num = gets.chomp.to_i)
  end

  final_num = gets.chomp.to_i
  if arr.include?(final_num)
    puts "#{final_num} does appear in #{arr}"
  else
    puts "#{final_num} does NOT appear in #{arr}"
  end
  