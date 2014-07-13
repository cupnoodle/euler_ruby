#!/usr/bin/ruby -w
# last written by soulchild at 13 July 2014
puts "Project Euler question 15";

=begin
this question is relatively easy if you understand how it works, 
I did this question using a paper and pencil beforehand.

You start from left upper corner and need to move to right down corner.
So in a 20x20 grid square, you total need to move 20 times right, 20 times down.
r = right, d= down
one of the way to move is : rrrrrrrrrrrrrrrrrrrrdddddddddddddddddddd
so you only need to rearrange the r's and d's position.
count all unique position then you have the answer.

The answer is (40!)/(2*(20!)) , 40 character for arrangement but r and d both repeated 20 times.

=end

$fortyfactorial = 0;
$twentyfactorial = 0;
product = 1;
for i in 1..40
	product *= i;
	if(i == 20)
		$twentyfactorial = product;
	end
end
$fortyfactorial = product;

ans = $fortyfactorial/($twentyfactorial*$twentyfactorial);
puts ans;

# ans = 137846528820