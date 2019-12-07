[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
#What is the block's return value in the following code? How is it determined? 
#Also, what is the return value of any? in this code and what does it output?

#The block return value is true because num.odd? evaluates to true. 
#any? will return true because the block evaluatess to true.