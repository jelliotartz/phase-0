# pseudocode

# Input: a list of names (an array)
# Output: a series of groups composed of the input names (an array of arrays, or a multidimensional array)

# Steps to solve the problem:

# identify the number of names that are being inputed.

# if input number is less than 3, program cannot run

# create an empty container, final_groups

# is the input number divisible into groups of 3?
#   if yes, divide input into groups of 3
#     place in final_groups
#   if no, divide input into groups of 3, and add leftover to last group of 3

# output final_groups

# Initial Solution


# def group_maker(students)
#   if students.length < 3
#     p "There are not enough people in this list to make an Accountability Group."
#   end

#   final_groups = []
#   groups = students.each_slice(3).to_a
#   leftover = groups.last.length

#   if leftover == 3
#     final_groups << groups
#   end

#   if leftover == 2
#     remainder = groups.pop(2)
#     groups.last << remainder.flatten!
#     p groups
#   end

#   if leftover == 1
#     popped = groups.pop[0]
#     groups.last << popped
#     p groups
#   end
# end

# students = ["Syema Ailia", "Alan Alcesto", "Daniel Anderson", "James Artz", "Darius Atmar", "Brian Bensch", "Calamity Jane", "Dingle Fritz", "Cool Modee", "Jamaican M.E. Crazy", "Casey Jones", "Aunt Jemima", "Carlton"]


# group_maker(students)


#######

# Refactored solution #1

def group_maker(students)
  groups = students.each_slice(3).to_a
  leftover = groups.last.length

  if students.length < 3
    p "There are not enough people in this list to make an Accountability Group."
  end

  if leftover == 1
    popped = groups.pop[0]
    groups.last << popped
    p groups
  elsif leftover == 2
    remainder = groups.pop(2)
    groups.last << remainder.flatten!
    p groups
  else
    p groups
  end
end

students = ["Syema Ailia", "Alan Alcesto", "Daniel Anderson", "James Artz", "Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies", "Logan Bresnahan", "William Brinkert", "Scott Chou", "Bernice Anne W Chua", "Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts", "Amaar Fazlani", "Solomon Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gomes", "Will Granger", "Christopher M. Guard", "Ryan Ho", "Igor Kazimirov"]


group_maker(students)









