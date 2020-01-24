#In the easy exercises, we worked on a problem where we had to count the number
#of uppercase and lowercase characters, as well as characters that were neither
#of those two. Now we want to go one step further.

#Write a method that takes a string, and then returns a hash that contains 3
#entries: One represents the percentage of characters in the string that are
#lowercase letters, one the percentage of characters that are uppercase letters
#and one the percentage of characters that are neither.

#You may assume that the string will always contain at least one character.

#Examples:
#letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
#letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
#letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }


#Given a string of characters, uppercase, lowercase and other types
#Initiate a hash with keys 'lowercase', 'uppercase', and 'neither', all with
#values of 0
#Initialize 3 integer variables with values of 0 with names equal to the keys
#of the hash
#split the string into an array of characters
#iterate through the array
#if the character is lowercase, add 1 to the value of its respective variable
#do the same for uppercase and neither
#Divide each of the variables by the total number of characters to get the
#percentage
#add the value of that calculation to the respective value in the hash
#return the hash


def letter_percentages(string)
	result = {lowercase: 0, uppercase: 0, neither: 0}
	string.chars.each do |letter|
		if ('a'..'z').include?(letter)
			result[:lowercase] += 1.0
		elsif ('A'..'Z').include?(letter)
			result[:uppercase] += 1.0
		else
			result[:neither] += 1.0
		end
	end
  result.each do |key, value|
    result[key] = ((value * 100) / string.chars.size).round(2)
  end
  result
end

p letter_percentages('abcdefGHI')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')
				