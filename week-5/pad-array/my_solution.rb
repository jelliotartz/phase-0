# Pad an Array

# I worked on this challenge with Will Grainger

# I spent 1.25 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.




# 0. Pseudocode

=begin
DESTRUCTIVE METHOD
create a BANG method that accepts three arguments (array, integer, value)
IF array length is greater than min_size
    return the array if so
  END the if argument
  IF min_size is greater than array length
    THEN subtract min_size - array.length equals remainder(2)
    remainder.times do value >> array
  end the IF
  return the altered array
end the method

NON-DESTRUCTIVE METHOD
create a non-destructive method that accepts three arguments (array, integer, value)
  copy original array into new_array
  IF new_array.length is greater than min_size
    return the new_array if so
  END the if argument

IF min_size is greater than new_array length
THEN subtract min_size - new_array.length equals remainder
    remainder.times do value >> array
  end the IF
return the new_array
end the method

=end


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   if array.length >= min_size
#     return array
#   end
#   if min_size > array.length
#     remainder = min_size - array.length
#     remainder.times do array << value
#     end
#   end
#   p array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = array         # we found .clone in ruby docs to create a copy of the orig.
#   if new_array.length >= min_size
#     return new_array
#   end
#   if min_size > new_array.length
#     remainder = min_size - new_array.length
#     remainder.times do new_array << value
#     end
#   end
#   p new_array
#   p array   # we mistakenly left this line in the initial solution
# end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  end
  if min_size > array.length
    remainder = min_size - array.length
    remainder.times do array << value
    end
  end
  p array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  if new_array.length >= min_size
    return new_array
  end
  if min_size > new_array.length
    remainder = min_size - new_array.length
    remainder.times do new_array << value
    end
  end
  p new_array
end


# 4. Reflection

# Were you successful in breaking the problem down into small steps?

# Yes. I think our pseudocode did a great job of breaking the code
# down into the steps that we implemented in our initial solution.
# While we were writing the pseudocode, we talked through what we
# needed it to do, and the entire pseudocoding process lasted for
# probably about 20-25 minutes, and included a few rewrites/edits.
# Overall, I think we did a great job of laying out what we wanted the
# methods to accomplish in the pseudocode step.

# Once you had written your pseudocode, were you able to easily
# translate it into code? What difficulties and successes did you
# have?

# The process went pretty smoothly. We had to tweak a few parts of
# pseudocode in order to get it into ruby syntax, but most of the
# tweaks were pretty minor. e.g., we had the operators switched around
# on the << method, so we had to switch those.

# Was your initial solution successful at passing the tests? If so,
# why do you think that is? If not, what were the errors you
# encountered and what did you do to resolve them?

# No, it didn't pass all the tests. We thought we had solved the issue
# of creating a copy of the original array for the non-destructive pad
# method by simply adding a line to the method array = new_array, but
# it became clear after the rspect that this was not working. We found
# the .clone method in ruby docs, and this took care of the issue.

# We also had left an extra output at the end of the non-destructive
# method, which was causing rspec failures. We had put it in while
# troubleshooting, and then forgot to remove it for a little bit.


# When you refactored, did you find any existing methods in Ruby to
# clean up your code?

# We looked at ruby docs for a while, but our code looked pretty clean
# once we got it to pass all the rspec tests. I'm sure there are other
# solutions to this challenge that take less lines of code, but we
# were happy with ours as it is here.

# How readable is your solution? Did you and your pair choose
# descriptive variable names?

# Yeah, I think our variable names are descriptive. We chose remainder
# to represent the difference between min_size and array.length, which
# made sense to us because it is the result of subtracting min_size
# from array.length. Please let me know if you have thoughts about a
# more descriptive name here :)

# What is the difference between destructive and non-destructive
# methods in your own words?

# Destructive methods altar the original input. Once a destructive
# method has been called and executed, the input is no longer
# accessible (i.e., because it has been altered by the method). A non-
# destructive method can still have an effect on the input, but it has
# to preserve the original input, including after the method is
# called.


