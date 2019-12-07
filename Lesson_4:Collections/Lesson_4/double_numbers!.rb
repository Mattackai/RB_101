def double_numbers(numbers)
  #doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * 2

    counter += 1
  end

  print numbers
end

double_numbers([1,2,3,4,5])

#things to remember
#Use counter as an argument.
#Read your code very thoroughly
