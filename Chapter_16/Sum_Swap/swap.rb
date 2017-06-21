# Given two arrays of integers, find a pair of elements you can swap to give the arrays
# the same stuff

require 'byebug'

def swap(arr, arr2)
  sum_one = arr.inject(:+)
  sum_two = arr2.inject(:+)

  sorted_one = arr.sort
  sorted_two = arr2.sort

  index_one = 0
  index_two = 0
  swap_values = []
  while index_one < sorted_one.length && index_two < sorted_two.length
    new_sum = sum_one
    new_sum_two = sum_two

    new_sum += sorted_two[index_two]
    new_sum -= sorted_one[index_one]

    new_sum_two += sorted_one[index_one]
    new_sum_two -= sorted_two[index_two]

    # debugger
    if new_sum == new_sum_two
      puts new_sum
      puts new_sum_two
      swap_values = [sorted_one[index_one], sorted_two[index_two]]
    end

    if new_sum < new_sum_two
      index_two += 1
    else
      index_one += 1
    end
  end
  swap_values
end

array_one = [4,1,2,1,1,2]
array_two = [3,6,3,3]
print swap(array_one, array_two)
