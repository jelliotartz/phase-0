# Introduction to Inheritance

# I worked on this challenge with Chris Gomes.


# Pseudocode

=begin

Assume that Class Cohort has an instance variable for student
add_student
Input: name, city, email_address
Output: nil

STEP1: Add student data to the student section of Cohort


remove_student
Input: name, city, email_address
Output: nil, but record of student is removed from Cohort.students

Steps: 

[Verify that the student exists in Cohort]

Remove student record from Cohort.students

Student record should be removed from LocalCohort.students by inheritance.

END

currently_in_phase
Input: current date
Output: 0,1,2, or 3

IF (today's date - start_date <= 63)
  RETURN 0
IF (today's date - start_date <= 84)
  RETURN 1
IF (today's date - start_date <= 105)
  RETURN 2
IF (today's date - start_date <= 126)
  RETURN 3




graduated?
Input: Date (today's date)
Output: Boolean (True or False)

Steps:

IF input (today's date) is greater than cohort graduation date
  RETURN True

Otherwise,
  RETURN False

END


=end


# Initial Solution



require 'date'

class Cohort
  
  attr_reader :name, :p0_start_date, :students

  def initialize(name, p0_start_date)
    @name = name
    @p0_start_date = p0_start_date
    @students = []
  end

  def add_student(student)
    students << student
  end

  def remove_student(student)
    students.delete(student)
  end

  def currently_in_phase
    if (DateTime.now.jd - p0_start_date.jd <= 63)
      return 0
    elsif (DateTime.now.jd - p0_start_date.jd <= 84)
      return 1
    elsif (DateTime.now.jd - p0_start_date.jd <= 105)
      return 2
    elsif (DateTime.now.jd - p0_start_date.jd <= 126)
     return 3
    else
     return "Graduated!"
    end
  end
    
  def graduated?
    if (DateTime.now.mjd - p0_start_date.mjd > 126)
      return true
    else
      return false
    end
  end

  def immersive_start_date
    DateTime.jd(p0_start_date.jd + 84)
  end

  def graduation_date
    DateTime.jd(p0_start_date.jd + 126)
  end

  def num_of_students
    students.length
  end


end




class LocalCohort < Cohort

  attr_reader :city

  def initialize(name, p0_start_date, city)
    super(name, p0_start_date)
    @city = city
  end
  

end


### driver code

p island_foxes = LocalCohort.new("Island Foxes", DateTime.new(2015, 10, 1), "Chicago")

p chorus_frogs = LocalCohort.new("Chorus Frogs", DateTime.new(2015, 11, 30), "New York")

island_foxes.add_student("James Artz")

p island_foxes

island_foxes.remove_student("James Artz")

p island_foxes

p island_foxes.graduation_date

# Refactored Solution

  def graduated?
    (DateTime.now.mjd - @p0_start_date.mjd > 126) ? true : false
  end


# Reflection

=begin

What concepts did you review in this challenge?

I reviewed ruby classes, instance variables, class methods, and reader
attributes. I also learned about inheritance in Ruby, which was new to
me.


What is still confusing to you about Ruby?

I'd still like to get more practice with exercises that challenge my
ability to use inheritance on different classes.

What are you going to study to get more prepared for Phase 1?

I think I'll do the Pez Dispenser challenge next.


=end