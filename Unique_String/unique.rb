# determine is a string has all unique characters
# Using additional data structures
def unique(string)
  letter_count = {}

  # Iterate through the string, if we have not seen the letter_count
  # place it in the hash, if we have seen it return false
  string.split('').each do |char|
    if letter_count[char]
      return false
    else
      letter_count[char] = true
    end
  end

  # If we get to this point there are no duplicates, return true
  true
end

# print unique("abcs")

# Unique string using no additional data structures
# Brute for,iterate through for each character O(n^2)
def unique_two(string)
  string.split('').each_with_index do |val, idx|
    string.split('')[idx + 1..-1].each do |val2|
      if val == val2
        return false
      end
    end
  end
  true
end

# print unique_two("abcda")

# This uses sorting so it is bottlenecked at O(n * logn)
# Sort string and then iterate through and see if the following char is the same as previous

def unique_three(string)
  sorted_string = string.split('').sort

  sorted_string.each_with_index do |val, idx|
    if idx == sorted_string.length - 1
      return true
    elsif val == sorted_string[idx + 1]
      return false
    end
  end
end

print unique_three("abacda")
