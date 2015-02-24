def find_subsets(numbers)
	subsets = []
	for i in 0..numbers.length-1 do
		for j in i+1..numbers.length-1 do
			sum = numbers[i] + numbers[j]
			if numbers.include?(sum)
				subsets << "#{numbers[i]} + #{numbers[j]} = #{sum}"
			end
			for k in j+1..numbers.length-1 do
				sum = numbers[i] + numbers[j] + numbers[k]
				if numbers.include?(sum)
					subsets << "#{numbers[i]} + #{numbers[j]} + #{numbers[k]} = #{sum}"
				end
			end
		end
	end
	subsets.length
end

numbers = [1,2,3,4,6]

#numbers = [3,4,9,14,15,19,28,37,47,50,54,56,59,61,70,73,78,81,92,95,97,99]

#puts "subsets: #{find_subsets(numbers)}"
# need to redo this using recursive method


def find_subsets_recursive(numbers, j=0, prev_sum=0)
	number_of_subsets = 0
	while < numbers.length
		for i in 0..numbers.length-1 do
			sum = numbers[i] + find_subsets_recursive(numbers, i+1, numbers[i]) + prev_sum	
			if numbers.include?(sum)
					number_of_subsets += 1
			end
		end
	end
	number_of_subsets
end

puts "subsets: #{find_subsets_recursive(numbers)}"
