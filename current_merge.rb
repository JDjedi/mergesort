@array = [1, 2, 7, 98, 45, 5, 1, 4, 56, 23]
# @merged = []

# Break up array until array.length == 1
def sort(arg)
	if arg.length == 1
		return arg
	else
		arr_0 = arg.shift(arg.length/2)
		arr_1 = arg
		arr_0 = sort(arr_0) [1,2] [1,1,2,5]
		arr_1 = sort(arr_1) [1,5]  [7, 23, 56]
	end
	merge([1], [2])
end

def merge(arg, arg1)
	[1,2] [1,5]
	ary = []
	puts "#{arg} #{arg1}" #Test
	while arg.any? && arg1.any do
		if arg < arg1 # puts the lesser of two args
			cont_1 = arg.shift #put the lower of the two arg into this container
			ary.push(cont_1) #push the containers contents to the merged array
	#		sort(arg1[0])
		else
			cont_2 = arg1.shift #put the lower of the two arg into this container
			ary.push(cont_2) #push the containers contents to the merged array 
	#		sort(arg[0])
		end
	end
	arg.any? 
	arg1.any

	ary = [1]
	[1,1]
	[1,1,2]
	[1,1,2,5]
	puts ary
end



sort(@array)

[1, 2, 7, 98, 45, 5, 1, 4, 56, 23]
[1, 2, 7, 98, 45] [5, 1, 4, 56, 23]

[1] [2]
[1,2]

sort[1, 2, 7, 98, 45] sort[5, 1, 4, 56, 23]
sort [1,2] sort[7,98,45] sort[5,1] sort[4,56,23] 
sort[1] sort[7,8] sort[45] sort[5] sort[1] sort[4]  sort[56,23] merge[1,7 8, 45]
         sort[7] sort[8]                                sort [56] sort[23] merged[1,7] merged[8, 45] merged[5,1]


