=begin
9 is a Kaprekar number since 
9 ^ 2 = 81 and 8 + 1 = 9

297 is also Kaprekar number since 
297 ^ 2 = 88209 and 88 + 209 = 297.

In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. 
=end

def kaprekar?(k)
	n = k.to_s.length
	square = k**2
	square_string = square.to_s
	last_n = square_string.split(//).last(n).join
	first_n = square_string.split(//).first(square.to_s.length - last_n.length).join
	(last_n.to_i + first_n.to_i== k) ? "#{k} is a kaprekar number" : "#{k} is not a kaprekar number. Wuan Wuan Wuan..."
end

puts kaprekar?(9)