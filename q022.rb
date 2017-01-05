require 'csv'

# parse the text files into an array
$names = Array.new
$score = 0

CSV.foreach('p022_names.txt') do |row|
  row.each do |column|
  	$names << column
  end
end

# sort names alphabetically
$names.sort!

$names.each_with_index do |name, name_index|

	# to store score of each name
	nameScore = 0

	# get byte of each character in string
	name.each_byte do |b|
		
		# 'A' is 65 in ASCII, hence deduct 64 because A need to become 1 point
		nameScore += (b - 64)

	end

	# score calculation by multiplying the index
	$score += nameScore * (name_index + 1)

end

puts $score