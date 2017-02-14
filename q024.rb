# one liner answer with ruby powerful math library lol
# puts "one liner"
# print [0,1,2,3,4,5,6,7,8,9].permutation.to_a[1000000-1].join
# 2783915460

class Integer

	def factorial
		if self < 0
			return 0
		end
	
		ans = 1

		for i in 1..self
			ans *= i
		end

		return ans
	end

end

#puts 10.factorial

input_array = [0,1,2,3,4,5,6,7,8,9]
nth_permutation = 1000000

# used to store the output
$output_array = []

$tmp_array = input_array

# index of permutation starts at 0, i.e :  permutation[0] = 0123456789
$tmp_permutation = nth_permutation - 1

# the index of the digit to take from remaining array , i.e. tmp_array
$tmp_position = 0

# deduce the digit through factorial 
while $tmp_array.length > 0
	$tmp_position = $tmp_permutation / ($tmp_array.length - 1).factorial

	$tmp_permutation = $tmp_permutation % ($tmp_array.length - 1).factorial

	$output_array << $tmp_array[$tmp_position]
	$tmp_array.delete_at($tmp_position)

end

puts $output_array.join
