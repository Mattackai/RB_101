statement = "The Flintstones Rock!"
statement.each_char { |c| puts c if c == 't'}
statement.count('t')
