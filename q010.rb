#!/usr/bin/ruby -w
# last written by soulchild at 10 July 2014
puts "Project Euler question 10";

$sum = 0;

#check is prime
def is_prime(inputnum)
	testnum = 2;
	result = true;

	until testnum > Math.sqrt(inputnum).floor
		if(inputnum % testnum == 0)
			result = false;
			break;
		end

		testnum += 1;
	end

	return result;
end

for i in 2..2000000
	if(is_prime(i))
		$sum += i;
	else
		next
	end
end

puts $sum;

# ans = 142913828922
# runtime = 54.23seconds