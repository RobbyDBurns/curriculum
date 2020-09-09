# Enter a negative number if you wish to shift backwards
# Enter a positive number if you wish to shift forwards
def caesarCipher(string, factor)
  # gets the ascii value of every single char in the string
  ascii_array = string.chars.map(&:ord)
  # shifts each char appropriately
  shifted_array = ascii_array.map do |char|
    char + factor
  end
  # converts the numbers back into chars
  shifted_array = shifted_array.map do |char|
    char.chr
  end
  # will return the 
  shifted_array.join
end

string = caesarCipher("test", 5)
puts string

# ascii = "test".chars.map(&:ord)
# for char in ascii
#   puts char
# end
