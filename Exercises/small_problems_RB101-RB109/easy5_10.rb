#Write a method that will take a short line of text, and print it within a box.
#You may assume that your input will always fit in your terminal window.

#Example: 
#print_in_box('To boldly go where no one has gone before.')
#+--------------------------------------------+
#|                                            |
#| To boldly go where no one has gone before. |
#|                                            |
#+--------------------------------------------+

#print_in_box('')
#+--+
#|  |
#|  |
#|  |
#+--+



def print_in_box(string)
  print "+" + ("-" * (string.length + 4)) + "+" + "\n"
  print "|" + (" " * (string.length + 4)) + "|" + "\n"
  print "|" + (" " * (string.length + 4)) + "|" + "\n"
  print "|" + (" " * 2) + string + (" " * 2) + "|" + "\n"
  print "|" + (" " * (string.length + 4)) + "|" + "\n"
  print "|" + (" " * (string.length + 4)) + "|" + "\n"
  print "+" + ("-" * (string.length + 4)) + "+" + "\n"
end

print_in_box("super duper flappy dabby doo")  

print_in_box(" ")