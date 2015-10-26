# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers (array)
# Output: the combined total value of the array.
# Steps to solve the problem.

# define a variable called sum with initial value of 0

# iterate over each element in the array.

# add the value of each element to sum

# return the value of sum.


# 1. total initial solution

# def total(array)
#   sum = array[0]
#   array.each do |add|
#     sum = sum + add
#   end
#   sum
# end


# 3. total refactored solution

def total(array)
  sum = 0
  array.each do |number|
    sum = sum += number
  end
  sum
end




# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: an array of strings
# Output: a string
# Steps to solve the problem.

# define a variable called sentance with an initial value equal to the first element in the array
# iterate over the array.
# add each element of the array to sentance
# add a space after each element
# add a period at the end of the array.
# return sentance

# 5. sentence_maker initial solution

# def sentence_maker(strings)
#   sentance = strings[0]
#   strings.each do |add_together|
#     sentance = sentance + add_together
#   end
#   sentance
# end



# # 6. sentence_maker refactored solution

# def sentence_maker(strings)
#   sentance = String.new
#   strings.each do |add_together|
#     sentance = sentance.to_s + " " + add_together.to_s
#   end
#   sentance.capitalize + "."

# end

# strings = ["make", "this", "a", "line"]

# p sentence_maker(strings)

######



def sentence_maker(strings)
  sentance = ""
  strings.each do |word|
    sentance += word.to_s + " "
  end
  sentance.strip!
  sentance.capitalize + "."

end


### here are two other methods that pass the rspec test and make use
### of some handy ruby methods to accomplish the challenge:

# def sentence_maker(strings)
#   strings.join(" ").capitalize + "."
# end

# def total(array)
#   x=array.inject(:+)
#   p x
# end