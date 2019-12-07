produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_list)
  fruits = {}
  counter = 0
  key = produce_list.keys

  loop do
    break if counter == produce_list.size
    current_key = key[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      fruits[current_key] = current_value
    end
    counter += 1
  end
  print fruits
end


select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

#Things to remember: Make a variable for the value, referenced by the hash and the current key
#remember to iterate the counter
#Take things slow any use PEDAC
