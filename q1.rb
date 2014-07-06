#!/usr/bin/ruby -w

puts "Project Euler question 1";

$sum = 0;

#below 1000 does not includes 1000
for i in 1..999
	if i%3 == 0 and i%5!=0
		$sum+=i;

	elsif i%3 !=0 and i%5==0
		$sum+=i;

	elsif i%3==0 and i%5==0
		$sum+=i;
	end
end

puts $sum;
#ans = 233168