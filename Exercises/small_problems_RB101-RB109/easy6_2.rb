#Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

#Example:
#remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
#remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
#remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

#Given an array of strings
#Iterate through the array, one by one
#for each element, split the element into an array
#iterate through the sub_array one by one
#for each element, delete it if it is a vowel

def remove_vowels(array) #Works, but is very long, wordy and non-intuitive.
  vowels = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
  new_array = []
  array.map do |string|
    sub_array = string.chars.select do |letter|
      letter unless vowels.include?(letter)
    end
    new_array << sub_array.join
  end
  new_array
end

def remove_vowels(strings) #LS method
  strings.map { |string| string.delete('aeiouAEIOU') }
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))

