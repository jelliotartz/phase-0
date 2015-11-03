# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# Pseudocode

=begin
# Input: array of strings
# Output: a string (randomly generated from input array)
# Steps:

Create a method that establishes a collection of elements as the sides
on a die.

Define a variable that equates the sides of a die with the elements
from the input.

If input has no elements, output a message indicating that the program
needs input elements.

Create an operation that outputs the number of sides on the die by
counting the number of input elements and outputting the result.

Create an operation that randomly returns one of the input elements.
# => randomly generate an index number from the array input.
# => output the element of this index number.

=end

# Initial Solution

class Die
  def initialize(labels)
    @sides = labels
    if @sides == []
      raise ArgumentError.new("Please enter labels for die.")
    end
  end

  def sides
    @sides.length
    p @sides.length
  end

  def roll
    element_showing = @sides[rand(@sides.size)]
    p element_showing
  end

end


# Driver code
# p Die.new(['A', 'B', 'C', 'D', 'E', 'F'])





# Refactored Solution

class Die
  def initialize(labels)
    @sides = labels
    raise ArgumentError.new("Please enter labels for die.") if @sides == []
  end

  def sides
    @sides.length
  end

  def roll
    element_showing = @sides[rand(@sides.size)]
  end
end




# Reflection

=begin

What were the main differences between this die class and the last one
you created in terms of implementation? Did you need to change much
logic to get this to work?

The main difference between this die class and the last one is the use
of an array of strings versus an inout of one integer. Two of the
methods had to be altered because of the use of an array of strings:
    >>  To return the number of sides on this die, we need to count the
        number of elements and return that number. .length and .size both
        accomplish this with arrays of strings. For the previous die
        class, the input integer simply needed to be returned in order to
        answer the question "how many sides are on this die?"
    >>  Similarly, the rand method needed to be adjusted slightly to
        account for strings versus integers. Here, we need to randomly
        generate an index number, then return the element associated with
        that index number.

In sum, the logic didn't change that much, but the methods needed to
be adjusted a little to account for an array of strings instead of an
integer.

What does this exercise teach you about making code that is easily
changeable or modifiable?

Making code easily changeable and modifiable is a good idea. A
developer may need to altar a program or method based on a change in
input from a client, and having easily changeable code could make a
big difference in terms of cost and time.

What new methods did you learn when working on this challenge, if any?

It was good to get more experience working with rand. I feel like this
is an important tool to have firmly understood, as there will probably
be lots of instances when you want to randomly generate something. I'm
still not totally comfortable with it, but each time I practice
working with it, it gets easier.


What concepts about classes were you able to solidify in this
challenge? Besides rand, it was good to get some more practice with
instance variables versus local variables.


=end