#Write a method that takes two strings as arguments, determines the longest of the two strings, 
#and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
#You may asssume the strings are of different lengths.

#Given a pair of strings of varying length
#compare the length of the strings
#assign the shorter string to a "short" variable and assign the longer string to a "long" variable.
#concatenate the variables and return them.


def short_long_short(str1, str2)
  if str1.size > str2.size
    short = str2
    long = str1
  elsif str2.size > str1.size
    short = str1
    long = str2
  end
  short + long + short
end







puts short_long_short('abc', 'defgh') 
puts short_long_short('abcde', 'fgh') 
puts short_long_short('', 'xyz')