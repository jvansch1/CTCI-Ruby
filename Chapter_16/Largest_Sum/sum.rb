# Find the largest contiguous sum in an array

def largest_sum(array)

  # Keep track of the maximum sum we have seen so far
  # Update sum if current sum is larger
  max_sum = 0

  # current_sum
  # => current_sum will be reset if current sum < 0
  current_sum = 0

  array.each_with_index do |value, index|
    current_sum += value

    # Change max_sum if we find a new max_sum
    if current_sum > max_sum
      max_sum = current_sum
    end

    # if current_sum < 0
    # => we do not want to use this section
    # => reset current_sum to 0
    if current_sum < 0
      current_sum = 0
    end
  end
  max_sum
end

print largest_sum([2,-8,3,-2,4,-10])
