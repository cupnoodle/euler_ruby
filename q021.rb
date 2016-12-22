class Numeric

	def isPerfectSquare?
		squareRoot = Math.sqrt(self)
		squareRoot = squareRoot.floor
	
		return squareRoot ** 2 == self
	end

end

# hash table to store sum of divisor
$sumOfDivisors = Hash.new

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
	return sum
end


for a in 1..10000
	b = sumOfDivisor(a)

	if b < 10000
		db = sumOfDivisor(b)

		# remember a ≠ b
		if db == a && b!=a
			if !$added.has_key?(a)
				$ans += a
				$added[a] = 1
			end

			if !$added.has_key?(b)
				$ans += b
				$added[b] = 1
			end
		end
	end

end

puts $ans
