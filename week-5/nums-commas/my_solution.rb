# Numbers to Commas Solo Challenge

# I spent 3 hours on this challenge.

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

# I looked through the ruby docs, but I was unsuccessful in my quest
# to find a method that would evaluate the length of a string, and
# allow me to insert an element with a given set of conditions - i.e.,
# look at string length, add a comma 3 characters in from the end,
# until you reach the point where the string length after the comma is
# less than 3. (I've also found in this exercise it's easier to
# communicate with ruby telling it to start at the beginning, which
# means I include 2 .reverse methods so that I can count 'up' from the
# back of the number.)

# Searching "insert elements periodically along a string ruby" in
# Google leads to results that generally solve the issue using regex
# methods. By playing around with the regex methods I was able to
# reduce the challenge solution down to one line of code, which seems
# like a good refactored solution, although it breaks the cardinal
# rule in this challenge of using regex methods. I'll put the
# refactored regex solution below.

####### MY REFACTORED SOLUTION (uses regex methods) #######

def separate_comma(integer)
  output = integer.to_s.reverse.scan(/.{1,3}/).join(",").reverse
end

# Since I've played with searching for refactor solutions for a good
# hour or so, I'm going to leave it as it is in the initial solution,
# which passes the rspec, but feels clunky and unsatisfactory to me.
# It's full of repetitions, and I feel like I'm missing something
# obvious about how to accomplish the "add a comma 3 characters in
# from the end, until you reach the point where the string length
# after the comma is less than 3" quandary. .each? but I don't want to
# do something to each and every character... .slice? I tried this
# too, no dice. I dunno, I guess initial will have to suffice as my
# final answer.


# 3. Reflection

# What was your process for breaking the problem down? What different
# approaches did you consider?

# I wrote the number 1,000 on a piece of paper, and then wrote down
# the steps I would take to add the comma in the most basic logic I
# could think of. Then I repeated that process with a 7-digit number,
# 10-digit, 5-digit, etc, until I felt like I had covered all the
# bases and could summarize the logic needed to account for any number
# of digits.

# Was your pseudocode effective in helping you build a successful
# initial solution?

# Yes. When I wrote the pseudocode, I imagined using either an if or
# while condition to count the number of characters to the right of
# the comma, afer inserting it. When I actually started writing the
# code, however, I realized that I didn't know how to do that without
# searching through the ruby docs. So instead I settled on a series of
# if conditions that inserted the commas in the correct places based
# on string length. It feels like a bad solution, but it passes the
# rspec test, so it's at least an MVP. I realize, of course, that my
# initial solution only works for numbers up to 13 characters long,
# and if I wanted the code to be effective for bigger numbers, I'd
# have to make more if conditions... and I realize that the initial
# solution is in clear violation of D.R.Y. (don't repeat yourself). I
# know there are better ways out there. I just don't know what they
# are!

# Also, when I wrote the pseudocode, I came up with the idea that it
# would be easier to tell ruby where to insert the commas if the
# number was reversed. Hence reversing the string at the beginning,
# and then "unreversing" it at the end, after inserting the commas.

# What Ruby method(s) did you use when refactoring your solution? What
# difficulties did you have implementing it/them? Did it/they
# significantly change the way your code works? If so, how?

# I tried .map, .split, changing the string to an array, I played
# around with .insert to see if I could get it to work periodically
# instead of just once per call... it seems likely that I hit on the
# right method to accomplish the task, but just failed to see how to
# use it correctly... it's also very possible that I just didn't find
# the right method. The regex methods .scan and .gsub both looked like
# elegant ways to simplify the challenge solution.


# How did you initially iterate through the data structure?

# I had a hard time figuring out how to accomplish the following task:
# "add a comma 3 characters in from the end, until you reach the point
# where the string length after the comma is less than 3." So in my
# initial solution, I created a workaround with a series of if
# conditions, based on string length: if string.length is between 4
# and 7, add a comma after the first 3 (working with the reversed
# string); if string.length is between 7 and 10, add commas after
# first 3 and first 7; etc. This solution definitely violates the DRY
# principle, but I couldn't find anything better, without resorting to
# regex methods.

# # Do you feel your refactored solution is more readable than your
# # initial solution? Why?

# The solution using regex methods is very readable and succinct...
# alas, I've described my regex/non-regex dilemma ad nauseam, above,
# so I won't go over it again here.
