#!/usr/bin/ruby -w
# last written by soulchild at 14 July 2014
puts "Project Euler question 16";

=begin
Feels like a bit cheating by using ruby for this question, if you use C++ or similar language,
 you have to declare an array of integer to store each digit and then multiplying them by two and add the tens to the beside element.
 repeat for 1000 times
 ruby is able to perform 2^1000 directly, I am amused.
=end

#perform 2^1000 then  split them into individual digit and sum them up.
$sum = 0;
bignum = 2**1000;
bignum.to_s.split("").each do |i|
	$sum += i.to_i;
end

puts $sum;

#ans = 1366