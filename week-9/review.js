/*


JavaScript Review: translating Ruby challenges to JavaScript

Warm-up: Factorial


Pseudocode:

input: an integer
output: an integer
	more specifically, the integer that is the result of multiplying the input integer by every other integer betweeen itself and 0

steps

create a variable to act as a counter

create a second variable to store the result of the multiplication process. 

set counter equal to 1

while counter is less than the input integer, multiply counter times counter - 1.

store the result in the result variable.

output result.


A Ruby solution:

def factorial(number)
  if number == 0
    1
  else
    i = number-1
    while i >= 1
      number = number * i
      i = i - 1
    end
    number
  end
end


A JS solution:

*/

factorial = function(input_integer) {
	var output = 1;
	for(var counter = 1; counter <= input_integer; counter++) {
		output = output * counter;
	}
	console.log(output);
};

factorial(5);



/* Reflection

I wanted to use the "standard JS counter" method (var counter = 1;
counter <= input_integer; counter++), so I decided to count up to the
input integer, rather than the traditional count down to 1. 

I'm sure
there are ways to refactor this, but I'm going to move on to some
other challenges, and then maybe come back to it in the future.

*/







