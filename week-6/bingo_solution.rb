# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 8 hours on this challenge.

=begin

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)

  Create a container that has two containers within it: the first has
  the letters b, i, n, g, and o; the second has the numbers 1-100

  Create a second container with two containers within it.

  Randomly select one letter from Container 1, subcontainer 1.

  Output the selection to Container 2, subcontainer 1.

  Randomly select one number from Container 1, subcontainer 2.

  Output the selection to Container 2, subcontainer 2.

  Create a third container. Output the result of combining the two
  Container 2 subcontainers.

    * this will allow me to keep the randomly generated integer
    * separate, since it is all that I need for the upcoming 'check'
    * method.


# Check the called column for the number called.


  Define a process called 'check' that will determine whether the
  integer in Container 2 subcontainer 2 is present in the board
  container.

  if yes, output true
  if no, output false


# If the number is in the column, replace with an 'x'


  If 'check' outputs true, replace the integer with an 'x'
  Output new board as the updated version of board.

# Display a column to the console

  I'm not sure what this means... if column means the board array, how
  is this different than what is being displayed in the pseudocode
  directly below this?

# Display the board to the console (prettily)

  If output of check is false, output board.
  Otherwise output new board as the updated version of board.


=end

# Initial Solution



class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @jar = [["B", "I", "N", "G", "O"], [1..100]]
    # p @jar[0].length
    @container1 = @jar[0][rand(@jar[0].length)]
    @container2 = 1 + rand(100)
    @container3 = "#{@container1} " + "#{@container2}"
    p "The call is #{@container3}!"
  end

  def check(board)
    if @bingo_board.flatten.join(",").include?(@container2.to_s)
      @new_board = @bingo_board.flatten.join(",").gsub!(@container2.to_s, "X")
      @pretty_board = @new_board.split(",").each_slice(5).to_a
      @pretty_board.each_index do |i|
        puts if i%5 == 0
        p @pretty_board[i]
        end
      p "the number was #{@container2}"
    else
      @bingo_board.each_index do |i|
        puts if i%5 == 0
        p @bingo_board[i]
      end
      p "nuts"
    end
  end
end


board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check(board)



# Refactored Solution


class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letters = ["B", "I", "N", "G", "O"]
    @number = 1 + rand(100)
    @letter = @letters.sample
    p "The call is #{@letter} #{@number}"
  end

  def check
    column = @letters.index(@letter)
    @bingo_board.map! do |row|
      if row[column] == @number
        row[column] = "X"
        p "winner!"
      end
      row
    end

  end

  def display
    @bingo_board.each do |row|
      p row
    end
  end

end

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check
new_game.display


=begin

# Reflections on refactor.

I rethought my approach to the challenge and pretty much started fresh
for the refactor. I knew that my inital solution was not really
effective, since they only searched for integer matches and replaced
everything they found - so if you randomly generated the integer 8,
for example, the output board would have X3 for 83, 6X for 68, XX for
88, etc. Obviously not what the solution for the challenge expects.

For the refactor, I created separate variables for the letters and
numbers, and did not worry about combining them into their own
container.

For the check method, I decided to evaluate each column separately,
using the commonality of the index value for each sub-array. Using
@letters.index(@letter) gives me the called column value, which I
stored as a local variable, column.

I used .map! to iterate over @bingo_board, and set up a condition that
if the integer at column's index value was equal to @number, replace
it with an "X".

Then, in a new method called display, I outputted @bingo_board
regardless of whether .map! had found and replaced an element in
@bingo_board (i.e., either with the replacement "X", or just
outputting the original board.)

=end

#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of
your pseudocoding style?

The pseudocoding for this challenge was difficult. In my initial
solution, I hit on the idea that the letter wasn't actually all that
important in terms of replacing a number in an array. When I
considered this approach, I think I justified it by saying to myself,
"I want to start with just figuring out how to get an X to take the
place of a number. After that, I'll worry about making it 'true
bingo'." So from my original perspective, I was successful in
implementing my pseudocode, but I knew it wasn't really what the
challenge wanted.


What are the benefits of using a class for this challenge?

A class allows you to define instance variables (e.g., @letters, @number,
and @letter) that you can access in different methods - the instance
variables are defined in the call method, and are used in the check
method. This couldn't be done with local variables.

How can you access coordinates in a nested array?

It was tough to see how to think about the nested arrays as having
common index values, which created the idea of a 'column' that is
represented by each of the letters B I N G and O. In hindsight, it
makes sense, but it was a tough cognitive leap.

It's interesting that challenge 6.5, where we explore nested data
structures, generally seemed pretty straightforward, yet this
challenge, in which we apply the same nested data accessing
principles, is much more difficult for me to comprehend. The concept
seems straightforward, but the application on a bingo board is
anything but. Suffice to say I'll never think of bingo in the same way
after this exercise.

What methods did you use to access and modify the array?

My inital solution had a whole slew of ruby doc methods - .rand,
.include?, .flatten, .join, .gsub!, .each_slice, .each_index,
.split... seems like I practically used the entire doc set, haha.

The refactor is much more consise, and uses only a few methods - rand
and sample to get the call; map!, .index, and .each. to find and
replace the desired value, and to output the board again.

Give an example of a new method you learned while reviewing the Ruby
docs. Based on what you see in the docs, what purpose does it serve,
and how is it called?

I had not used .sample before this exercise. I had previously used
rand with an index value to get a randomly selected element from an
array, but .sample seems like a simple and elegant way to accomplish
the same job.

It was also good to get more practice with .index, which I had used
before, but its application in this nested array search was quite a
brain twister. .map! and .each are old familiar friends, but again,
using them in nested arrays was somewhat new and unfamiliar, so I
learned a lot about the ruby docs and got good practice with this
challenge.


How did you determine what should be an instance variable versus a
local variable?

If the variable needs to be accessed outside of its method, it should
be an instance variable. If it doesn't, it should be a local variable,
so that it doesn't run the risk of mistakenly being used/accessed when
you don't want it to be.

What do you feel is most improved in your refactored solution?

My refactor is way more simple, consise and elegant than my inital
solution. They're not even in the same ball park. The refactor solves
the challenge succinctly and clearly, while the initial solution is
quite a mess, and basically doesn't complete the challenge - it does
replace an integer with an X, and it works "most" of the time, but it
fails at the edge cases. But the challenge was very difficult for me,
and I was happy with the initial results even though I knew they were
far from perfect. The refactor looks much improved in terms of
simplicity and clarity.



=end



