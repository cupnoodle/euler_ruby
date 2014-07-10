#!/usr/bin/ruby -w
# last written by soulchild at 9 July 2014
puts "Project Euler question 9";

#condition to break the for loop to reduce computation done
$bool = true;

#brute force and try every combination of a and b; c=sqrt(a^2 + b^2)
for a in 1..1000
	for b in 1..1000
		if(a+b+ Math.sqrt(a*a + b*b) == 1000)
			puts a*b*Math.sqrt(a*a + b*b);
			$bool = false;
			break;
		end

		if(!$bool)
			break;
		end
	end
end

# ans = 31875000