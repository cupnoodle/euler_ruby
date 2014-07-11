#!/usr/bin/ruby -w
# last written by soulchild at 11 July 2014
puts "Project Euler question 12";

#generate nth triangle num, 1, 3, 6, 10, ...etc
def trianglenum(inputterm)
	sum = 0;
	for i in 1..inputterm
		sum += i;
	end

	return sum;
end

#count number of divisor of a number
#all number have even number(eg: 6, 1x6,2x3,3x2,6x1) of divisor except perfect squares
def countdivisor(inputnum)
	count = 0;
	tempsqrt = Math.sqrt(inputnum).to_i;

	for i in 1..tempsqrt
		if(inputnum % i ==0)
			count += 1;
		end
	end

	count *= 2;
	if(tempsqrt*tempsqrt == inputnum)
		count -= 1;
	end

	return count;
end

#starting case term
$j = 1;

#brute force until answer is found
until false do
	temp = trianglenum($j);
	if(countdivisor(temp) > 500)
		puts temp;
		break;
	end
	$j += 1;
end

# runtime = 8.3 seconds
# ans = 76576500