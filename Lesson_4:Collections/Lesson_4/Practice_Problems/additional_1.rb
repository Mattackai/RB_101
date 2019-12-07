flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
new_flintstones = {}
counter = 0

loop do
  current_element = flintstones[counter]
  new_flintstones[current_element] = counter
  counter += 1
  break if counter == flintstones.size
end

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
