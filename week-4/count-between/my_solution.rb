# Count Between

# I worked on this challenge by myself

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)

  if lower_bound > upper_bound
    return 0
  end

  if lower_bound == upper_bound
    return list_of_integers.size
  end

  if list_of_integers.reject { |a| a > lower_bound }

    list_of_integers.reverse!.pop
    list_of_integers
  end

  if list_of_integers.each { |a| a > lower_bound} && list_of_integers.each { |a| a < upper_bound}
    list_of_integers.size
  end
  # list_of_integers.size
end


# count_between([1, 1, 1], 1, 1)

# array = Array.new(100) { rand(101) - 50 }

# count_between(array, -50, 50)

count_between([-10, 1, 2], 0, 100)


# frequencies.each do |word, frequency|
# #     if frequency > 1
# #       p word + ": " + frequency.to_s
# #     end
# #   end
# # end
# books.sort! do |first, second|
# # #       if first < second # first book before second alphabetically
# # #        -1
# #       elsif first > second # first after second
# #        1
# #       else # first and second are the same
# #        0
# #       end


# this need to equal 2

  # if lower_bound < list.list_of_integers.size
  #   list_of_integers.
  # list_of_integers.flatten
  # if lower_bound < list_of_integers.to_i
  #   return 0
  # end