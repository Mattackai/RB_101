#Write a method that takes a string as an argument, and returns a new string that contains
#the original value using a staggered capitalization scheme in which every other character
#is capitalized, and the remaining characters are lowercase. Characters that are not letters
#should not be changed, but count as characters when switching between upper and lowercase.

#Example:
#staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
#staggered_case('ALL_CAPS') == 'AlL_CaPs'
#staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


def staggered_case(string, first_case = "up")
  new_string = ""
  if first_case == "up"
    index = 0
  else
    index = 1
  end
  string.each_char do |x|
    index % 2 == 0 ? new_string << x.upcase : new_string << x.downcase
    index += 1
  end
  new_string
end

        

p staggered_case("the big red dog 895")
p staggered_case('I Love Launch School!', "down")
p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS', "down")
p staggered_case('ignore 77 the 444 numbers')



