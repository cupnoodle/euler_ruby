#!/usr/bin/ruby -w
# last written by soulchild at 8 July 2014
puts "Project Euler question 6";


#sum of squares (is always smaller compared to squares of sum)
$smalltotal = 0;

# 1+2+3+4+5+....
$bigtotal = 0;

for i in 1..100
	$bigtotal += i;
	$smalltotal += i*i;
end

$bigtotal = $bigtotal*$bigtotal;

puts $bigtotal-$smalltotal;

# ans = 25164150