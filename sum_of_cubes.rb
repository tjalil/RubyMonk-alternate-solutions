def sum_of_cubes(a,b)
	num_array = (a..b).to_a
	num_array.map! do |num|
		num**3
	end
	sum = num_array.inject(:+)
end

puts sum_of_cubes(3,5)