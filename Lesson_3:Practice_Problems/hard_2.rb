greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

#What is the result of the last line in the code above?
# :a 'hi there' because informal_greeting is a reference to the object greetings[:a]. Multiple variables can point to the same object and when one is mutated, the object itself is mutated, affecting all objects pointing to it.
