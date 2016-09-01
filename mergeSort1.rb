@array = [1, 2, 7, 98, 45, 5, 1, 4, 56, 23]

# Break up array until array.length == 1
def sort(arg)
	if arg.length == 1
		return arg
	else
		arr_0 = arg.shift(arg.length/2)
		arr_1 = arg
		p arr_0
		p arr_1
		arr_0 = sort(arr_0)
		arr_1 = sort(arr_1)
		p arr_0
		p arr_1
	end
	p merge(arr_0, arr_1)
end

def merge(arg, arg1)
	ary = []
	p "#{arg} #{arg1}" #Test
	while arg.any? || arg1.any? do
		if arg[0].nil?
			ary.push(arg1.shift)
		elsif arg1[0].nil?
			ary.push(arg.shift)
		elsif arg[0] < arg1[0] # puts the lesser of two args
			# cont_1 = arg[0] #put the lower of the two arg into this container
			ary.push(arg.shift) #push the containers contents to the merged array
			# merge(arg, arg1) #recursive function, want to pass arg1[0]
		else
			# cont_2 = arg1[0] #put the lower of the two arg into this container
			ary.push(arg1.shift) #push the containers contents to the merged array
			# merge(arg, arg1) #recursive function, want to pass arg[0]
		end
	end
	ary
end



sort(@array)
