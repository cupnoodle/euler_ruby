#!/usr/bin/ruby -w
# last written by soulchild at 13 July 2014
puts "Project Euler question 14";

$collatzset = Array.new;

#store iteration step needed for given input
# $collatzset[startingnumber] = steps needed
$collatzset[1] = 0;

#calculate the number of iteration needed to reach 1
def collatz(inputnum)
	initial = inputnum;
	iteration = 0;
	if inputnum == 1
		return 0;
	end

	while inputnum!=1 do
		#check if previous step is calculated before, use it if exist to reduce computation number
		if($collatzset[inputnum].class == "Fixnum")
			iteration += $collatzset[inputnum];
			$collatzset[initial] = iteration;
			return iteration;
		end

		#collatz conjecture formula
		if(inputnum % 2 == 0)
			inputnum /= 2;
			iteration += 1;
		else
			inputnum = 3*inputnum + 1;
			iteration+=1;
		end
	end

	$collatzset[initial] = iteration;
	return iteration;
end

$longest =0;
$ans = 0;
for i in 4...1000000
	if(collatz(i)>$longest)
		$longest = collatz(i);
		$ans = i;
	end
end

puts $longest;
puts $ans;

# runtime = 34.5 seconds
# ans = 837799