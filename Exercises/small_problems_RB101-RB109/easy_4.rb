vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurences(arr)
  output = {}
  counter = 0

  loop do
    current_element = arr[counter]
    if output.has_key?(current_element)
      output[current_element] += 1
    else
      output[current_element] = 1
    end
    counter += 1
    break if counter == arr.size
  end
  print output
end
count_occurences(vehicles)

