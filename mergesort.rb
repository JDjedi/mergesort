@array = [1, 2, 7, 98, 45, 5, 1, 4, 56, 23]
@merged = []

# Break up array until array.length == 1
def sort(arg)
	arr_0 = arg.shift(arg.length/2)
	arr_1 = arg
#	puts "#{arr_0}\n#{arr_1}" #test
	merge(arr_0, arr_1)
end

def merge(arg, arg1)
	puts "#{arg}\n#{arg1}" #Test
	puts ""
	if @merged.length == @array.length
		return @merged
#	elsif arg.length == 0
#		arg1.sort!
#		@merged.push(arg1)
#	elsif arg1.length == 0
#		arg.sort!
#		@merged.push(arg)	
	else
		2.times do |n| #this is here only for testing purposes
			if arg[0] < arg1[0]
				container_1 = arg.shift(arg[0]) #remove first element from array-1 if it is less than the first element in array-2
				puts "arg array: #{arg}" #test to see what is in the array
				@merged.push(container_1) #push container to @merged array
				puts "Merged Array: #{@merged}" #test to see what is within the array
# 			merge(arg, arg1) #recursive function
			else arg[0] > arg1[0]
				container_2 = arg1.shift(arg1[0]) #remove first element from array-2 if it is less than the first element in array-1
				puts "arg array: #{arg1}" #test to see what is in the array
				@merged.push(container_2)
				puts "Merged Array: #{@merged}"
#				merge(arg, arg1) #recursive function
			end
		end
	end
	puts "#{@merged}"
end

sort(@array)