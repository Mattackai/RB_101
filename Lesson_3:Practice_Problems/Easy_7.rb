def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }
p eval(how_deep)  #Eval is actually adding up the method add_8 5 times and adding it to the original number, 2. This confuses me because the parameters above eval are strings.
p how_deep