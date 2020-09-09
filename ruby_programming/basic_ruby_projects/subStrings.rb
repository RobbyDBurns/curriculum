dictionary = ["below","down","go","going","horn","how",
  "howdy","it","i","low","own","part","partner","sit"]

string = "Howdy partner, sit down! How's it going?"

def subStrings(string, dictionary)
  hash = Hash.new
  # creates an array of strings seperated by whitespace
  array = string.split(/ /)
  # for every word in the array we loop through the dictionary
  for word in array
    dictionary.each do |dict_word|
      # check if the dictionary word is a substring of the current word
      if word.include? dict_word
        # if the hash already has this key, we add the occurence by one
        # else make it one
        if hash.has_key? dict_word
          hash[dict_word] = hash[dict_word] + 1
        else
          hash[dict_word] = 1
        end
      end
    end
  end
  hash
end

puts my_hash = subStrings(string, dictionary)
