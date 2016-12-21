#How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
require 'date'

# number of sunday fell on the first of the month
firstSundays = 0

# loop all the year and all the months
for y in 1901..2000
	for m in 1..12
		if Date.new(y,m,1).cwday == 7
			firstSundays += 1
		end
	end
end

puts firstSundays
#171