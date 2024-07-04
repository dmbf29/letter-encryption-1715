ALPHABET = ("A".."Z").to_a

def encrypt(text)
  text.chars.map do |character|
    index = ALPHABET.index(character)
    index ? ALPHABET[index - 3] : character
  end.join
end


# condition ? truthy : falsey
#### BEFORE REFACTOR
# def encrypt(text)
#   # create an array of alphabet using range
#   alphabet = ("A".."Z").to_a
#   # turn the string into a array of char
#   characters = text.chars
#   # interate over the char using .map
#   encrypted = characters.map do |character|
#     # find the index of the char in the alphabet
#     index = alphabet.index(character)
#     # if it is not in the alphabet return the original
#     if index
#       new_index = index - 3
#       # subtract 3 from the index
#       # turn the new index to the letter inside the alphabet
#       alphabet[new_index]
#     else
#       character
#     end
#   end
#   # join the letters back together
#   encrypted.join
# end
