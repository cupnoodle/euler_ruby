pyramid = []

def max(x,y)
	if x > y
 		return x
 	else
		return y
	end
end

# Retrieve the pyramid text
File.open('18.txt') do |f|
  f.each_line do |line|
    pyramid << line.split.map(&:to_i)
  end
end

# Inverse the pyramid to make the iteration starts from bottom to top
pyramid.reverse!

pyramid.each_with_index do |p_row, i|
	p_row.each_with_index do |p_column, j|
		
		if i + 1 < pyramid.length
			if j + 1 < p_row.length

				# add the maximum value of two possible path to its previous path
				# until it reach the top
				pyramid[i+1][j] +=  max(p_row[j], p_row[j+1])
			end
		end

		print "#{p_column.to_s.rjust(4,' ')} "
	end

	puts ""
end

# ans : 1074

