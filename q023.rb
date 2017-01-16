class Numeric

	def isPerfectSquare?
		squareRoot = Math.sqrt(self)
		squareRoot = squareRoot.floor
	
		return squareRoot ** 2 == self
	end

end

# hash table to store sum of divisor, abundant number and sum of two abudant numbers
$sumOfDivisors = Hash.new
$abundantNumbersHash = Hash.new
$sumOfAbundantNumbers = Hash.new

$ans = 0

# perform sum of divisor of a number n, and add it to hash if it is abudant number
def sumOfDivisor(n)

	if $sumOfDivisors.has_key?(n)
		return $sumOfDivisors[n]
	end

	sum = 0
	squareRootFloor = Math.sqrt(n).floor

	for i in 1..squareRootFloor
		if n % i == 0
			sum += i
			sum += n/i
		end
	end

	if n.isPerfectSquare?
		sum -= squareRootFloor
	end

	sum -= n

	$sumOfDivisors[n] = sum

	if sum > n
		# add to abundant number hash if is abudant number
		$abundantNumbersHash[n] = 1
	end

	return sum
end

# 28112 because 28123+1-12
# compute all abudant numbers below 28112
for a in 1..28112
	sumOfDivisor(a)
end

# compute the sum of two abudant numbers
$abundantNumbersHash.each_with_index do |(key, value), index|
	$abundantNumbersHash.each_with_index do |(key2, value2), index2|

		abundantNumberSum = key + key2

		# ignore if the sum is larger than 28123 since numbers above 28123 
		# can always be written in form of sum of two abundant number
		if abundantNumberSum > 28123
			next
		end

		# ignore if previously computed
		if $sumOfAbundantNumbers.has_key?(abundantNumberSum)
			next
		end

		$sumOfAbundantNumbers[abundantNumberSum] = 1
	end
end

# compute the answer
for a in 1..28123

	# move on if the number can be written as sum of two abudant numbers
	if $sumOfAbundantNumbers.has_key?(a)
		next
	end

	# add to the answer sum otherwise
	$ans += a
end

puts $ans


