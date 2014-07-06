#!/usr/bin/ruby -w

puts "Project Euler question 3";

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

#find the biggest prime factor of a number
def largest_prime_factor(inputnum)
	testnum = Math.sqrt(inputnum).floor;
	if(testnum%2==0)
		testnum +=1;
	end

	#keep looping until found
	until false
		if(is_prime(testnum))
			if(inputnum % testnum ==0)
				return testnum;
			end
		end

		testnum -=2; #prime number must be odd, in higher term
	end
end

puts largest_prime_factor(600851475143);
#14 seconds runtme
# ans  = 6857