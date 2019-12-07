['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

#How does count treat the blocks return value? How can we find out?
#It "counts" the number of elements in the array with a length of charactersss
#less than 4 and returns them. 
#Find out by referring to the docs.