[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]

#select is called on an array of nested hashes.
#each inner hash then has .all? called on it
#all then checks whether the first character in value is equal to the key.to_s
#the outer select method selects each inner block which returns true
#in this case, only the second inner hash meets the required parameter
#the return value of select on the array is [{ :c => "cat" }], a new collection