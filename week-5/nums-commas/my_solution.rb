# Numbers to Commas Solo Challenge

# I spent 1 hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

# What is the input? =>  An integer

# # What is the output? (i.e. What should the code return?) # =>  A
# string (with a comma inserted after every 3 decimal places of the
# integer)

# # What are the steps needed to solve the problem?

  # =>  turn the integer into a series of characters that can be
  # examined individually

  # =>  measure the length of the series of characters

  # =>  reverse the series of characters

  # =>  iterate over the series of characters

  # =>  add a comma after the first 3 characters

    # IF the number of characters to the right of the comma is less
    # than 3
      # reverse the string
      # output the result
      # END
    # otherwise repeat add comma step


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




# 2. Refactored Solution




# 3. Reflection

# What was your process for breaking the problem down? What different
# approaches did you consider?

# I wrote the number 1,000 on a piece of paper, and then wrote down
# the steps I would take to add the comma in the most basic logic I
# could think of.

# Was your pseudocode effective in helping you build a successful
# initial solution?

# Yes. When I wrote the pseudocode, I imagined using either an if or
# while condition to count the number of characters to the right of
# the comma, afer inserting it. When I actually started writing the
# code, however, I realized that I didn't know how to do that without
# searching through the ruby docs. So instead I settled on a series of
# if conditions that inserted the commas in the correct places based
# on string length. It feels like a bad solution, but it passes the
# rspec test, so it's at least an MVP. I realize, of course, that the
# initial solution only works for numbers up to 13 characters long,
# and if I wanted the code to be effective for bigger numbers, I'd
# have to make more if conditions... and I realize that the initial
# solution is in clear violation of D.R.Y. (don't repeat yourself) I
# know there are better ways out there. I just don't know what they
# are!

# Also, when I wrote the pseudocode, I came up with the idea that it
# would be easier to tell ruby where to insert the commas if the
# number was reversed. Hence reversing the string at the beginning,
# and then "unreversing" it at the end, after inserting the commas.

# What Ruby method(s) did you use when refactoring your solution? What
# difficulties did you have implementing it/them? Did it/they
# significantly change the way your code works? If so, how?



# How did you initially iterate through the data structure?



# Do you feel your refactored solution is more readable than your
# initial solution? Why?
