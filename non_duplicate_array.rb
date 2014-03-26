def non_duplicated_values(values)
	min_value = values.min
	max_value = values.max
	multiple_array = []
	single_array = []

	(min_value..max_value).each do |num|
		values.count(num) > 1 ? (multiple_array.push(num)) : (single_array.push(num))
	end
	single_array
end