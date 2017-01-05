class Numeric

	def isPerfectSquare?
		squareRoot = Math.sqrt(self)
		squareRoot = squareRoot.floor
	
		return squareRoot ** 2 == self
	end

end

# hash table to store sum of divisor
$sumOfDivisors = Hash.new
$abundantNumbersHash = Hash.new
$sumOfAbundantNumbers = Hash.new

$ans = 0

# prevent duplicate number to added, record previously added number to this hash
$added = Hash.new

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
#compute all abudant numbers below 28112
for a in 1..28112
	sumOfDivisor(a)
end

abundantNumberCount = $abundantNumbersHash.count

$abundantNumbersHash.each do |abudantNumberOne|
	$abundantNumbersHash.each do |abudantNumberTwo|
		abundantNumberSum = abudantNumberOne + abudantNumberTwo
		if $sumOfAbundantNumbers.has_key?(abundantNumberSum)
			next
		end
	end
end



