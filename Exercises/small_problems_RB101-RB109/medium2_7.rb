
#Write a method that returns the number of Friday the 13ths in the year given
#by an argument.
#You may assume that the year is greater tha 1752 and that it will remain in
#use for the foreseeable future.

#Examples:
#friday_13th(2015) == 3
#friday_13th(1986) == 1
#friday_13th(2019) == 2

require 'date'

def friday_13th(year)
	spoopy = 0
  Date.new(year,1, 1).upto(Date.new(year,12, 31)).each do |day|
    if day.friday? && day.day == 13
      spoopy += 1
    end
  end
  spoopy
end

p friday_13th(2015)
p friday_13th(1986)
p friday_13th(2019)