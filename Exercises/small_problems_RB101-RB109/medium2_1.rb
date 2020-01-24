#Write a program that reads the content of a text file and then prints
#the longest sentence in the file based on a number of words. Sentences
#may end with periods(.), exclamation marks(!), or question marks(?).
#Any sequence of characters that are not spaces or sentence-ending 
#characters should be treated as a word. You should also print the number
#of words in the longest sentence.

sentences = File.read("example.txt").split(/[.!?]/)
result = sentences[0]
sentences.each do |sentence|
  result = sentence if sentence.split.size > result.split.size
end
7
p result + " #{result.split.size}"


  