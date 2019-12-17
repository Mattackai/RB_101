a = %w(a b c d e)
puts a.fetch(7) #IndexError
puts a.fetch(7, 'beats me') #"Beats me", the default value
puts a.fetch(7) { |index| index**2 } #Block will be executed because index is out of bounds. 49.

