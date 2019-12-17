#Given the following data structure, and WITHOUT using to_h
#write some code that will return a hash where the key is
#the first item in each sub-array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
updated_arr = {}
arr.map do |subarr|
  updated_arr[subarr[0]] = subarr[1]
end

print updated_arr