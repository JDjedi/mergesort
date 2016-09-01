@array = [1, 2, 7, 98, 45, 5, 1, 4, 56, 23]
@merged = []

# Break up array until array.length == 1
def sort(arg)
	if arg.length == 1
		return arg
	else
		arr_0 = arg.shift(arg.length/2)
		arr_1 = arg
		arr_0 = sort(arr_0)
		arr_1 = sort(arr_1)
	end
	merge(arr_0, arr_1)
end

def merge(arg, arg1)
#	puts "#{arg}\n#{arg1}" #Test
	if arg[0] < arg1[0]
		@merged.push(arg)
#		merge(arg, arg1)
	else
		@merged.push(arg1)
#		merge(arg, arg1)
	end
	puts @merged
end



sort(@array)