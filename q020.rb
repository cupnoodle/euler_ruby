#Find the sum of the digits in the number 100!

# result of 100!
bigfactorial = 1

sum = 0

for i in 1..100
	bigfactorial *= i
end

while bigfactorial > 0
	sum += bigfactorial % 10
	bigfactorial /= 10
end

puts sum
#648