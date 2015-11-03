# Your Names
# 1) Brian Bensch
# 2) James Artz

# We spent 1 hour on this challenge.

# Bakery Serving Size portion calculator.

=begin

#### Pseudocode: going through the initial code and writing in our
#### understanding of what the code is doing.

#defining a method that takes two inputs
def serving_size_calc(item_to_make, order_quantity)
  #defining a Hash called library that has keys which are items and
  #quantities that we think are serving sizes per unit.
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #creating a variable that starts at 3 and later iterates down to zero
  error_counter = 3

  #iterating through all items within our hash and doing something
  library.each do |food|
    #library[food] is actually going to return a key-value pair
    #will need to modify this when come back
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end

  #determining how the iteration will end
  if error_counter > 0
    #intend to fire this error when item_to_make is not library
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #returns value at given key input
  serving_size = library.values_at(item_to_make)[0]
  #calculates the batches necessary to produce enough servings
  #modulo operator probably not right(?)
  serving_size_mod = order_quantity % serving_size

  case serving_size_mod
  when 0
    #order_quantity/serving_size is dividing the quantity desired by the number of servings per batch.
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    #if there is a remainder, we will do the same division but then tell user they have XX leftoer pieces. complete the string or additional recommendations.
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

=end

########REFACTORED

def serving_size_calc(item, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item} is not a valid input") if menu[item] == nil

  servings_per_batch = menu[item]
  serving_size_remainder = order_quantity % servings_per_batch

  if serving_size_remainder == 0
    return "Calculations complete: Make #{order_quantity/servings_per_batch} of #{item}"
  else
    return "Calculations complete: Make #{order_quantity/servings_per_batch + 1} of #{item}, you have #{servings_per_batch-serving_size_remainder} leftover items."
  end
end

#DRIVER CODE
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this
# challenge? This was a really helpful exercise, in the sense that I
# had never refactored anyone else's code except my own. Working to
# improve the readability and fuction of someone else's code was
# interesting and fun. I learned that part of the process is actually
# making sure you understand the point of the code. The first time I
# read through it, I actually didn't understand correctly what it was
# supposed to accomplish. We needed to change the variable names and
# get rid of the "error-counter" concept before the basic function of
# the code started to make more sense to me.


# Did you learn any new methods? What did you learn about them?

# No, but I did get some practice accessing keys and values of hashes,
# which is still valuable for me at this point. Our guide did suggest
# using .has_key? for the portion of the method that raises the
# ArgumentError (line 60, above), which is still basically a 'new
# method' for me.

# What did you learn about accessing data in hashes?

# I still need more practice. I understand the syntax and am getting
# more comfortable with the methods, but it's definitely not second
# nature yet. When I'm put on the spot I kinda freeze up and have to
# talk my way through the process tentatively, rather than confidently
# knowing exactly what my options are and what's the best choice.



# What concepts were solidified when working through this challenge?
# I'm glad we're getting more opportunities to get comfortable with
# accessing hash data structures. With each exercise I get a little more
# solid with it, and I'm glad that I'm getting more chances to practice!

