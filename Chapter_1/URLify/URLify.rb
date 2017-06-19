# Split the string on spaces
# Rejoin the string but placing special character in between

def url(string)
  split_string = string.split(' ')
  split_string.join("%20")
end

print url("Mr John SMith       ")
