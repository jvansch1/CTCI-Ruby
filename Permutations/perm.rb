# The method sorts the strings and checks if they are equivalent.
# Must sort the string so time complexity is O(n * logn)

def is_permutation?(string_one, string_two)
  string_one.split('').sort == string_two.split('').sort
end

# This method does not use sorted_string
# => use an array which represents each position in the alphabet
# => iterate through the first string and increment all indices when we see a letter
# => iterate through second string and decrement all indices when we see letter
# => If string is a permutation, all indices should be equal to 0 at the end

def is_permutation_two?(string_one, string_two)
  array = Array.new(26, 0)

  string_one.split('').each do |val|
    array[val.ord - 97] += 1
  end

  string_two.split('').each do |val|
    array[val.ord - 97] -= 1
  end

  array.all? { |x| x == 0 }
end

# print is_permutation?("taco", "ocat")
print is_permutation_two?("a", "ababbababab")
