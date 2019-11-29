def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
puts bar(foo)
#no because the value of foo is always "yes" so when comparing foo == "no" within bar, the answer is false.
