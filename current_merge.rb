@array = [1, 2, 7, 98, 45, 5, 1, 4, 56, 23]
# @merged = []

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
	array = []
	puts "#{arg} #{arg1}" #Test
	while arg.any? || arg1.any? do
		if arg[0].nil?
			cont_1 = arg1.shift
			array.push(cont_1)
		elsif arg1[0].nil?
			cont_2 = arg.shift
			array.push(cont_2)
		elsif arg[0] < arg1[0]  #puts the lesser of two args
			cont_3 = arg.shift #put the lower of the two arg into this container
			array.push(cont_3) #push the containers contents to the merged array
		else
			cont_4 = arg1.shift #put the lower of the two arg into this container
			array.push(cont_4) #push the containers contents to the merged array
		end
	end
#	p array
end



sort(@array)

