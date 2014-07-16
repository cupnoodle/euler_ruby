#!/usr/bin/ruby -w
# last written by soulchild at 16 July 2014
puts "Project Euler question 17";

# *nothing, one , two, three, four, five, six, seven, eight, nine]
digit = [3, 3, 5, 4, 4, 3, 5, 5, 4];
# *nothing, twenty, thirty, forty, fifty, sixty, seventy, eighty, ninety
tenth = [6, 6, 5, 5, 5, 7, 6, 6];

#ten, eleven , twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
teen = [3, 6, 6, 8, 8, 7, 7, 9, 8, 8];
hundred = 7;
andd = 3; #because "and" is a reserved word

$sum = 0;

#sum all digit and times nine(8+1) as it will be repeated after twenty,thirty,forty...etc and 1 more time is itself independent
$sum += 9*digit.inject{|sum, x| sum + x };

#sum all tenth and times ten as    twenty,twenty-one,twenty-two....,twenty-nine got 10 'twenty'
$sum += 10*tenth.inject{|sum, x| sum + x };

#sum all those extra teen number including 'ten'
$sum += teen.inject{|sum, x| sum + x };

#multiply the sum by 10(9+1) as it will be repeated after one-hundred,two-hundred...etc and 1 more time is itself independent
$sum *= 10;

#the "one,two,..etc" is repeated 100 times , the "hundred" is repeated 900 times, the "and" is repeated (100-1)*9 times
$sum += 100*(digit.inject{|sum, x| sum + x } + 9*hundred) + (99*9*andd);

#"onethousand"
$sum += 11;
puts $sum;