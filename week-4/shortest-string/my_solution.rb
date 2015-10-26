# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below


def shortest_string(list_of_words)
  short_string = list_of_words[0]
  list_of_words.each do |measure|
    if short_string.size > measure.size
      short_string = measure
    end

  end
  p short_string
end


# the method below also passes the rspec and accomplishes the same
# task, using more of ruby's built-in methods.

# def shortest_string(list_of_words)
#   p list_of_words.min { |a, b| a.size <=> b.size }
# end


#### pseudocode ####

# input: an array of strings
# output: one string - the shortest string in the array

# define a variable, short_string, with an initial value of array[0]
# iterate over the array
# => measure the length of each string in the array
# => compare value of each element to short_string
# => replace IF the length of short_string is greater than the length of the array element
# return short_string