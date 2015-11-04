# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 2 hours on this challenge.


=begin
# Pseudocode

# Input: An integer.
# Output: A string.
# Steps:

Create an "operation" called "GuessingGame" that will be composed of
two programs: a "guess" program, and a "solved" program. The programs
will be described separately, below.

#guess program:
Input: An integer.
Output: A word.
Steps:

Compare the input integer of #guess to the input integer of the
GuessingGame operation.

If the #guess integer is higher than the GuessingGame integer, output
a word to inform the user that the guess integer is higher than the
GuessingGame integer.

If the #guess integer is lower than the GuessingGame integer, output a
word to inform the user that the guess integer is lower than the
GuessingGame integer.

If the #guess integer is the same as the GuessingGame integer, output
a word to inform the user that the guess integer is the same as the
GuessingGame integer.

#solved program
Input: a word (the result of the #guess program)
Output: a Boolean value (true or false)
Steps:

IF the program receives the word "correct" from the #guess program,
output the word true.

ELSE output the word false.

END

=end

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      :high
    elsif @guess < @answer
      :low
    elsif @guess == @answer
      :correct
    end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end

end

# Driver code
# p GuessingGame.guess(10)


# Refactored Solution


class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    return :high if @guess > @answer
    return :low if @guess < @answer
    return :correct if @guess == @answer
  end

  def solved?
    return true if @guess == @answer
    false
  end
end


# Reflection

=begin

How do instance variables and methods represent the characteristics
and behaviors (actions) of a real-world object?

*** I'm not sure how to answer this question.

When should you use instance variables? What do they do for you?

Instance variables should be used when you want to have access to the
information stored in the variable for different methods within a
class. They are available outside of the method in which they are
defined, distinguishing them from local variables.

Explain how to use flow control. Did you have any trouble using it in
this challenge? If so, what did you struggle with?

The flow control in this challenge seems pretty straightforward, if
one designs the game according to the rspec file and follows the form
suggested in the challenge Summary: a series of if conditions
returning either :high, :low, or :correct for #guess, and an if
condition that returns :true when the @guess integer is equal to the
@answer integer. These if conditions can take the form if/elsif...end,
or can be simplified to one-line forms as I have done in the
refactored solution.

In the second 'example' code block from the DBC challenge URL page,
there is a more complex flow control operation that is not strictly
necessary according to the summary and the rspec: an until loop that
outputs a summary of your most recent guess and its result. It seems
like DBC simplified the challenge and the rspec file so that this code
is not necessary, but they didn't take the example code out of the
challenge URL page.


Why do you think this code requires you to return symbols? What are
the benefits of using symbols?

The benefits of symbols are their uniqueness and immutability. Like an
integer, each symbol is always the same object - 100 is always 100, it
never represents another integer; similarly, :high is always :high, it
never represents something else. This is different than a string,
where "high" could be set to represent one value in this method, and
can mean something else in a different method, variable, array, etc.

The immutability of symbols means that you cannot do operations such
as :abc << :d and expect the result to be :abcd. :abc is always :abc,
and nothing changes it. The immutability of symbols can be checked in
irb by calling the .object_id method on them. They will always return
the same ID number, while the same operation performed on a string
will always return a different number. Run the code below a few times
in irb to see this in action.

p :abc.object_id
p "abc".object_id

=end



