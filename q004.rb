#!/usr/bin/ruby -w

puts "Project Euler question 4";

def is_palindrome(inputnum)
	reversenum = 0;
	clone_inputnum = inputnum;

	while(clone_inputnum > 0)
		reversenum *= 10;
		reversenum += clone_inputnum%10;
		clone_inputnum /= 10; 
	end

	if(inputnum == reversenum)
		return true;
	else
		return false;
	end
end

$largest = 1;

for i in 100..999
	for j in 100..999
		if(is_palindrome(i*j) and i*j> $largest)
			$largest = i*j;
		end
	end
end

puts $largest;

# ans = 906609
