# Longest String

# I worked on this challenge by myself

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below

def longest_string(list_of_words)
  long_string = list_of_words[0]
  list_of_words.each do |measure|
    if long_string.size < measure.size
      long_string = measure
    end

  end
  p long_string
end


# the method below also passes the rspec and accomplishes the same
# task, using more of ruby's built-in methods.

# def longest_string(list_of_words)
#   p list_of_words.max {|a,b| a.size <=> b.size}
# end