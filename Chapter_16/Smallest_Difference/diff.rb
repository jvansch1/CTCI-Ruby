# Given two arrays, compute the pair of values(one from each array) with the smallest non-negative difference
require 'byebug'
def smallest_difference(array, array_two)
  # Sort
  # => two smallest values would be in the beginning of the array
  # => Time Complexity: (n * logn)
  sorted_one = array.sort
  sorted_two = array_two.sort
  # Keep track if two separate indices
  one_index = 0
  two_index = 0
  minimum = 10000000000000
  while one_index < array.length && two_index < array_two.length
    # If we find a new lowest minimum, set it
    if (sorted_one[one_index] - sorted_two[two_index]).abs < minimum
      minimum = (sorted_one[one_index] - sorted_two[two_index]).abs
    end

    # In order to find a greater minimum, we want to increment the smaller number,
    # Since the array is sorted, the next number will be larger and thus minimum may be less
    if sorted_one[one_index] < sorted_two[two_index]
      one_index += 1
    else
      two_index += 1
    end

  end
  minimum
end

print smallest_difference([1,3,5,15,11,2], [23,127,235,19,8])
