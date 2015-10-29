# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?

# An integer

# # What is the output? (i.e. What should the code return?)

# A string (with a comma inserted after every 3 decimal places of the integer)

# # What are the steps needed to solve the problem?

# turn the integer into a series of characters that can be examined individually

# measure the length of the series of characters

# reverse the series of characters

# iterate over the series of characters

# add a comma after the first 3 characters

#   IF the number of characters to the right of the comma is less than 3
#     reverse the string
#     output the result
#     END
#   otherwise repeat add comma step









# 1. Initial Solution


def separate_comma(integer)
  output = integer.to_s.reverse
  if output.length >= 4 && output.length < 7
    output.insert(3, ',')
  elsif output.length >= 7 && output.length < 10
    output.insert(3, ',')
    output.insert(7, ',')
  elsif output.length >= 10 && output.length < 13
    output.insert(3, ',')
    output.insert(7, ',')
    output.insert(11, ',')
  end
  output.reverse
end

p separate_comma(17838)


# 2. Refactored Solution




# 3. Reflection