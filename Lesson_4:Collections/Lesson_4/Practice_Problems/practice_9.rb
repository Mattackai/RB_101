{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

#What is the return value of map? Why?
#Returns a new array containing the key(nil), value pair who's value.size is greater than 4.
