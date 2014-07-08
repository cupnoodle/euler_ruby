#!/usr/bin/ruby -w
# last written by soulchild at 8 July 2014
puts "Project Euler question 7";

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

#3th prime is 5

#to know currently the loop is calculating which term of prime
$primeterm =0;

#starting number to test if prime
$start = 2;

$ans = 0;

until false do
	if(is_prime($start))
		$primeterm += 1;
		if($primeterm == 10001)
			$ans = $start;
			break;
		end
	end

	$start+= 1;
end

puts $ans;

# 3 seconds runtime
# ans = 104743