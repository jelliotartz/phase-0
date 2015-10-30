# Die Class 1: Numeric

# I worked on this challenge by myself, with a little help from Will
# Brinkert. Thanks, Will!

# I spent 1.5 hours on this challenge.

# 0. Pseudocode

# Input: A number, which will represent the number of sides on the die.
# Output: A number, randomly generated between 1 and the input number.
# Steps:

# Define a 'machine' to carry out the steps. (i.e., the class Die)

# define a class variable that is equal to the number of sides on the die.

# If the number of die sides is less than 1, it's not a die.

# define a way to generate a random number that is between 1 and the
# number of die sides.

# the output is this number.




# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("The die must have 1 side or more.") if sides < 1
  end

  def sides
    @sides
  end

  def roll
    number_showing = 1 + rand(sides)
  end

end


# 3. Refactored Solution

# Since each method in Die only has 1 or 2 lines, and I don't think
# initialize can be compressed into 1 line, I don't think there's any
# refactoring to be done on this challenge.




# 4. Reflection


# What is an ArgumentError and why would you use one?

# An ArgumentError is part of the exception class. Exceptions are
# designed to give the user more information when a program doesn't do
# what it's expected to do. Without exceptions, a program would simply
# "break" unless it did exactly what is intended to. With exceptions,
# the user gets a 'clue' as to what is the nature of the problem,
# i.e., where to look to fix it. Generating the exception
# (ArgumentError) in this exercise allows us to get a little practice
# with providing information to a potential user regarding a potential
# edge case- here, what if the user inputs an unacceptable number for
# the number of sides of the die.


# What new Ruby methods did you implement? What challenges and
# successes did you have in implementing them?

# I used an if condition to take care of the ArgumentError exception.
# I used rand to generate the random number, and added 1 so that the
# number would be between 1 and the number, instead of 0 and *up to*
# the number.

# What is a Ruby class?

# In ruby, a class gives the programmer the ability to incorporate
# multiple methods into a single element, which can then be called all
# at once (i.e., in a prescribed order.) All of the methods in the
# class are stored there, so they doesn't need to be defined every
# time you want to use them.

# Why would you use a Ruby class?

# You would use classes when you want to call the same series of
# methods on a bunch of different objects. The class saves the methods
# and class variables defined within it, thereby allowing it to be
# applied to any number of objects.

# What is the difference between a local variable and an instance
# variable? Where can an instance variable be used?

# A local variable is limited in its use to the place in which it is
# defined - i.e., if it is defined within a method, it can only be
# used in that method. if it is overwritten with a new definition, the
# old definition is gone.

# An instance variable can be used in multiple methods and places
# within a class. In this challenge, @sides is an instance variable
# that is used in the Die class to allow the number of sides (a number
# passed into class as an argument) to be accessed by a method that
# returns the number of sides on the die (the method sides). The
# method sides cannot have 'sides' in its body, it needs to have
# @sides - which is defined in the initialize method, where @sides is
# equal to the information passed in via the argument parameter called
# sides.

# In sum, the difference is scope. The @sides versus sides example
# above nicely illustrates the difference in scope between local and
# instance variables.

