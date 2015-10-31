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

=begin
def group_maker(students)
  if students.length < 3
    p "There are not enough people in this list to make an Accountability Group."
  end

  final_groups = []
  groups = students.each_slice(3).to_a
  leftover = groups.last.length

  if leftover == 3
    final_groups << groups
  end

  if leftover == 2
    remainder = groups.pop(2)
    groups.last << remainder.flatten!
    p groups
  end

  if leftover == 1
    popped = groups.pop[0]
    groups.last << popped
    p groups
  end
end

=end


#######

# Refactored solution #1

=begin
def group_maker(students)
  groups = students.each_slice(4).to_a
  leftover = groups.last.length
  p "There are not enough people in this list to make an Accountability Group." if students.length < 3
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
=end

# refactor #2

=begin
def group_maker(students)
  groups = students.each_slice(4).to_a
  leftover = groups.last.length
  p "There are not enough people in this list to make an Accountability Group." if students.length < 3
  if leftover == 1
    popped = groups.pop[0]
    groups.last << popped
  elsif leftover == 2
    remainder = groups.pop(2)
    groups.last << remainder.flatten!
  end
  p groups
end
=end

# refactor #3

def group_maker(students)
  p "More people, please!" if students.length < 3
  if students.length % 4 == 0
      groups = students.each_slice(4).to_a
    elsif students.length % 5 == 0
      groups = students.each_slice(5).to_a
    elsif students.length % 3 == 0
      groups = students.each_slice(3).to_a
    else groups = students.each_slice(3).to_a
  end
  leftover = groups.last.length
  if leftover == 1
    popped = groups.pop[0]
    groups.last << popped
  elsif leftover == 2
    remainder = groups.pop(2)
    groups.last << remainder.flatten!
  end
  groups
end


students = ["Syema Ailia", "Alan Alcesto", "Daniel Anderson", "James
Artz", "Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies",
"Logan Bresnahan", "William Brinkert", "Scott Chou", "Bernice Anne W
Chua", "Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts",
"Amaar Fazlani", "Solomon Fernandez", "Edward Gemson", "Jamar Gibbs",
"Chris Gomes", "Will Granger", "Christopher M. Guard", "Ryan Ho",
"Igor Kazimirov"]

p group_maker(students)


=begin
What was the most interesting and most difficult part of this
challenge?

Getting the split-up arrays to "behave" the way that I wanted them to
was difficult. More specifically, it was challenging to get ruby to
add the remainder to the last group, and then output the result in the
desired manner. Basically controling the sub-arrays to the desired
effect was the hardest part of the challenge for me. Once I finally
got it to do what I wanted, I enjoyed the refactoring portion of the
exercise.

Do you feel you are improving in your ability to write pseudocode and
break the problem down?

Yes. I definitely see the logic of the pseudocode step, and each time
I do it, I benefit a little bit more from it.

Was your approach for automating this task a good solution? What could
have made it even better?

If I had more time, I might play around with some of the extra
complexity suggestions. Unfortunately I still have other assignments
to take care of, and the week is winding down, so I don't think I'll
have time.

What data structure did you decide to store the accountability groups
in and why?

I went with nested arrays. This allowed me to use the .last method to
"shovel" in the extra students to the last array.

What did you learn in the process of refactoring your initial
solution? Did you learn any new Ruby methods?

I spent some time looking for new methods in the docs, but
unfortunately I didn't deviate far from the methods I employed for my
initial solution. I think I still have a lot to learn about
refactoring and finding alternative solutions with ruby docs.
=end
