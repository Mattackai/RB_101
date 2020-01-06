#Write a method that takes a string, and then returns a hash that contains
#3 entries: one represents the number of characters in the string that are
#lowercase, one the number of characters that are uppercase letters, and ond
#the number of characters that are neither.

#Examples:
#letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
#letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
#letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
#letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

def letter_case_count(string)
  hash = {lowercase: 0, uppercase: 0, neither: 0}
  string.each_char do |x|
    if ('a'..'z').include?(x)
      hash[:lowercase] += 1
    elsif ('A'..'Z').include?(x)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end
  hash
end

#For once my method is nearly identical to LS method!


p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')
p letter_case_count('')      