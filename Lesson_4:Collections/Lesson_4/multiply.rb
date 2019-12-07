def multiply(numbers, multiple)
  #doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * multiple

    counter += 1
  end

  print numbers
end

multiply([1,2,3,4,5], 5)