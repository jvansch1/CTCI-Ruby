# Our one away method will serve as a master method which will
# Call a method depending on what we need to check

def one_away(string_one, string_two)
  # If the two strings are the same length, we do not
  # need to worry about remove or inserting characters
  # We go through and check to see if they are different
  if string_one.length == string_two.length
    check_edit(string_one, string_two)
  elsif string_one.length < string_two.length
    check_insert(string_one, string_two)
  else
    check_insert(string_two, string_one)
  end
end

def check_edit(string_one, string_two)
  found_difference = false
  string_one.split('').each_with_index do |val,idx|
    if val != string_two[idx] && found_difference
      return false
    elsif val != string_two[idx]
      found_difference = true
    end
  end
  true
end

def check_insert(string_one, string_two)
  index_one = 0
  index_two = 0

  # iterate through string
  while (index_two < string_two.length && index_one < string_one.length)
    # if the characters at index one and index two are not equal
    if (string_two[index_two] != string_one[index_one])
      # If the indices do not equal, it means we have already incremented index_two
      # and any other differences means it is not one away
      if (index_one != index_two)
        return false
      end
      index_two += 1
    # Else keep going through strings
    else
      index_one += 1
      index_two += 1
    end
  end
  true
end

print one_away("pale", "bale")
print one_away("pales", "pale")
