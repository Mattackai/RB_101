#Write a method that takes a string as an argument and returns a new string in which every uppercase
#character is replaced by it's lowercase version and every lowercase character is replaced by it's 
#uppercase version. All other characters should be unchanged.

#You may not use string.swapcase; write your own version of this method.

#Example:
#swapcase('CamelCase') == 'cAMELcASE'
#swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

def swapcase(string)
  swapped_str = ""
  string.each_char do |x|
    if ("a".."z").include?(x)
      swapped_str << x.upcase!
    elsif ("A".."Z").include?(x)
      swapped_str << x.downcase!
    else
      swapped_str << x
    end
  end
  swapped_str
end
        
p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')