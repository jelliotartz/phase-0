# Reverse Words


# I worked on this challenge by myself
# This challenge took me [#] hours.

# Pseudocode

=begin

Input: a sentence (i.e. a string of words)

Output: a string (i.e., the input sentence, but with each word reversed)

steps:

identify how many words are in the input array by looking for breaks (spaces) between words.

iterate over the individual words, reversing the order of characters in each one.

=end

# Initial Solution

# def reverse_words(input_string)
#   array_string = input_string.split
#   output = array_string.map! do |word|
#     word.reverse
#   end
#   output.join(" ")
# end


# input_string = "Hello this is a string"

# p reverse_words(input_string)



# Refactored Solution

def reverse_words(sentence)
  sentence.split.map! { |word| word.reverse }.join(" ")
end

sentence = "Hello, this is a sentence."

p reverse_words(sentence)


# Reflection

=begin

I got practice with a number of basic methods here- splitk map,
reverse, and join. I also got a chance to do some refactoring,
bringing the entire method down to one line, which is still pretty
easy to read, in my opinion.

=end