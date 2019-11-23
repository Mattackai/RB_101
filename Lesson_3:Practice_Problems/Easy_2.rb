#Describe the differences between ! and ? in Ruby. =>  ! is the logical NOT operator and is used to reverse logic. { if !(a * b) }
# ? is the ternery operator and is required when writing a ternery expression { if x ? do this: otherwise do this }

#what is != and where should you use it? =>  != means "Not equal to" and it used as a comparison operator. { if a != b do some stuff }

#put ! before something, like !user_name =>  #Putting ! before a local variable reverses the logic. Instead of saying "if that user name" you are saying "if NOT that user name"

#put ! after something, like words.uniq! =>  #Putting ! after a method can "sometimes" have destructive properties. Not all methods have a destructive forms and not all destructive methods use ! to show it.

#put ? before something => putting ? before something generally refers to a ternery expression. 

#put ? after something =>  Putting ? after is just a style convention, it says "This method will return a boolean value"

#put !! before something, like !!user_name => !! is basically a double "NOT". It will force a boolean value, negate that value, then negate it again. !!user_name will return true rather than false.

