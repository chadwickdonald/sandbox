
#words_arr = %w(b a c f d i h g)

def arrange_words(words_arr)
	words = words_arr.sort

	rows_needed = words.length%3
	if rows_needed == 2
		rows_needed = 1
	elsif rows_needed == 1
		rows_needed = 2
	end

	if rows_needed == 1
		words << " "
	elsif rows_needed == 2
		words << " " 
		words << " "
	end  

	rows = (words.length/3.0).ceil

	for i in (0..rows-1)
		puts words[i] + " " + words[i+3] + " " + words[i+6]
	end
end

words_arr = []
ARGV.each do |a|
	words_arr << a
end

arrange_words(words_arr)