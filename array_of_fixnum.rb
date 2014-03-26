def array_of_fixnums?(array)
	array.all? do |num|
		num.class == Fixnum
	end
end