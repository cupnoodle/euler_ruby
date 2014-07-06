#!/usr/bin/ruby -w

puts "Project Euler question 2";

$sum = 0;
$i = 0; #term

#fibonacci function
def fibo(term)
	if(term==1 or term ==0)
		return 1;
	else
		return fibo(term-1) + fibo(term-2);
	end
end


until fibo($i) > 4000000 do
	if(fibo($i)%2 == 0)
		$sum += fibo($i);
	end
	$i += 1;
end

puts $sum;

#ans = 4613732