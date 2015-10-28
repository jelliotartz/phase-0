# Calculate the mode Pairing Challenge

# I worked on this challenge with Jon Clayton

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.




# 0. Pseudocode


# What is the input?

# An array of numbers or strings

# What is the output? (i.e. What should the code return?)

# An array of the most frequent elements
  # - an array not a set number of values (could be 1, could be more)

# What are the steps needed to solve the problem?

# create a container that holds the elements and the number of times
# they occur. The default count for the number of times an element
# occurs is 0.

# iterate over the array, record each element and for each element
# increase its count by one.

# add the element to the container if it is not already there.

# increase the count for that element by one.

# END loop.

# - output the items that have the highest count.

# Determine the highest count value
# set highest value tracker to 0
# create container to hold modes
# Loop through the container
# if value > tracker
#    set tracker = value
#    reset mode container to empty
#    put current element into mode container
# end if
# if value = tracker add current element to container
# END LOOP

# Return these elements that are in the mode container



# 1. Initial Solution


def mode(array)
  mode_machine = Hash.new(0)
  array.each do |element|
    mode_machine[element] += 1
  end
  highest_count = 0
  mode_container = []
  mode_machine.each do |element, count|
    mode_container << element if count == highest_count
    if count > highest_count
      mode_container = []
      mode_container << element
      highest_count = count
    end
  end
 mode_container
end


# 3. Refactored Solution (only works for integers, not for strings)

# def mode(array)
#   array.sort!
#   while array.size > 0 do
#     last_array = [] + array
#     max = array.max
#     min = array.min
#     for num in min..max do
#       array.delete_at(array.index(num)) if array.include?(num)
#     end
#   end
#   p last_array
# end


# 4. Reflection




# Which data structure did you and your pair decide to implement and
# why?

# We used both. First, we created a hash, which we called
# mode_machine, and we set it so that it had initial value to 0. We
# used this hash to split the array up into elements and to add 1 to
# the value of each element as we iterated through the contents of the
# array, thus creating a hash that had the array elements as keys and
# their count as the values.

# Second, we created an array, called mode_container, which we used to
# store the highest element with the highest count. We iterated over
# the hash, testing each count to see if it is greater than our
# current highest count (which starts as the count of the first
# element in mode_machine).

# We chose to use the hash because it allowed us to associate a
# specific value (i.e., the count of the number of times an element
# was in the array) with each key (i.e., the elements). We chose the
# array for the second step because it allowed us to store the element
# associated with its count while we iterated over the hash to
# determine whether we had the highest count.


# Were you more successful breaking this problem down into
# implementable pseudocode than the last with a pair?

# Out pseudocode was pretty tight this time. We went back and did a
# little bit of editing while we were working on our initial solution,
# which I guess means certain parts of our pseudocode weren't
# implementable, but they were generally pretty minor tweaks. Writing
# the pseudocode was a useful step in terms of understanding what we
# then wrote in the initial solution.


# What issues/successes did you run into when translating your
# pseudocode to code?

# The part of the second step where we looped through the container
# (mode_container) and  stored the highest count was not written in
# the smallest steps in our pseudocode first draft. In the second
# draft we broke down the 3 steps that appear in the code.


# What methods did you use to iterate through the content? Did you
# find any good ones when you were refactoring? Were they difficult to
# implement?

# We used .each to iterate through both our array and hash. I'm not
# sure if += qualifies as a method, but we used that to get the mode
# value from the array. If we limited our challenge to integers, we
# were able to implement methods from the ruby docs library, such as
# sort, size, max, min, delete_at, and include? I commented out the
# method-filled solution that only works for numbers in the refactored
# solution of the challenge.



