# Write a function that when given to strings will check to see if
# one is a rotation of the other

require 'byebug'

def is_rotation?(string_one, string_two)
  return true if string_one == string_two

  split_one = string_one.split('')
  split_string = string_two.split('')

  i = 0
  while i <= split_string.length
    last_letter = split_string.pop
    split_string.unshift(last_letter)

    if split_string == split_one
      return true
    end
    i += 1
  end
  return false
end

print is_rotation?("waterbottle", "erbottlewat")
