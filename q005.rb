#!/usr/bin/ruby -w
# last written by soulchild at 7 July 2014
puts "Project Euler question 5";

#divisible from 1 to 20
def divisible(inputnum)
	#all number is divisible by one so skip it
	for i in 2..20
		if(inputnum % i != 0)
			return false;
		end
	end

	return true;
end 

#start from 2520, brute forcing by adding 20
$startnum = 2520;


until false do
	if(divisible($startnum))
		puts $startnum;
		break;
	end

	$startnum += 20;
end

#6 seconds runtime 
# ans = 232792560