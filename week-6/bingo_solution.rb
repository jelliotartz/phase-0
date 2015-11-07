# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

=begin

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)

  Create a container that has two containers within it: the first has the letters b, i, n, g, and o; the second has the numbers 1-100

  Create a second container with two containers within it.

  Randomly select one letter from Container 1, subcontainer 1.

  Output the selection to Container 2, subcontainer 1.

  Randomly select one number from Container 1, subcontainer 2.

  Output the selection to Container 2, subcontainer 2.

  Create a third container. Output the result of combining the two Container 2 subcontainers.
    * this will allow me to keep the randomly generated integer separate, since it is all that I need for the upcoming 'check' method.


# Check the called column for the number called.


  Define a process called 'check' that will determine whether the integer in Container 2 subcontainer 2 is present in the board container.

  if yes, output true
  if no, output false


# If the number is in the column, replace with an 'x'


  If 'check' outputs true, replace the integer with an 'x'
  Output new board as the updated version of board.

# Display a column to the console

  I'm not sure what this means... if column means the board array, how is this different than what is being displayed in the pseudocode directly below this?

# Display the board to the console (prettily)

  If output of check is false, output board.
  Otherwise output new board as the updated version of board.


=end

# Initial Solution

=begin

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

=end

=begin

here's how to get the bingoboard to be 'purty'

a = [[47, 44, 71, 8, 88], [22, 69, 75, 65, 73], [83, 85, 97, 89, 57], [25, 31, 96, 68, 51], [75, 70, 54, 80, 83]]

a.each_index do |i|
  puts if i%5 == 0
  p a[i]
end

=end







# Refactored Solution


class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @jar = [["B", "I", "N", "G", "O"], [1..100]]
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
        p @pretty_board[i]
        end
      p "Hit! The number was #{@container2}!"
    else
      @bingo_board.each_index do |i|
        p @bingo_board[i]
      end
      p "nuts!"
    end
  end


end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check(board)


#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

What are the benefits of using a class for this challenge?

How can you access coordinates in a nested array?

What methods did you use to access and modify the array?

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

How did you determine what should be an instance variable versus a local variable?

What do you feel is most improved in your refactored solution?

=end