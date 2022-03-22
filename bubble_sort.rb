# Bubble Sort, by Logan Hosoda

def bubble_sort(unsorted_array)
	is_sorted = true # Determines whether another loop is necessary
	counter = 0
	while counter < unsorted_array.length - 1 do
		temp_element = unsorted_array[counter]
		if unsorted_array[counter] > unsorted_array[counter + 1]
			is_sorted = false
			unsorted_array[counter] = unsorted_array[counter + 1]
			unsorted_array[counter + 1] = temp_element
		elsif counter == unsorted_array.length - 1 && is_sorted == true
			return unsorted_array
		end
		counter += 1
	end
	if is_sorted == false
		# Recursively loops through unsorted_array. If is_sorted remains
		# true throughout the call, then the base case is acheived,
		# and the method returns the sorted array. Otherwise, the method
		# continues to call itself until base case is acheived.
		bubble_sort(unsorted_array)
	else
		unsorted_array
	end
end

unsorted_array = [4,3,78,2,0,2,6,4,8,10,15]

p bubble_sort(unsorted_array)