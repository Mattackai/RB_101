[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

#What is the return value? Why?
#An array [1, nil, nil] because puts num always evaluates to nil.