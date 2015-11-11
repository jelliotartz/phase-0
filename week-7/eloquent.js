// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.



var myFirstVariable = "Hello ", myNextVariable = "World!";

console.log(myFirstVariable + myNextVariable);

// chapter 2, interacting with the Chrome console:

// prompt("what's your favorite food?");
// console.log("Hey! That's my favorite food too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a triangle:

var triangle = "#";

while (triangle.length < 8) {
  console.log(triangle);
  triangle = triangle + "#"
}


// FizzBuzz

// variation 1

var fizzBuzz = 1;

while (fizzBuzz < 101) {
  if (fizzBuzz % 3 == 0)
    console.log("Fizz");
  else if (fizzBuzz % 5 == 0 && fizzBuzz % 3 != 0)
    console.log("Buzz");
  else
    console.log(fizzBuzz);
  fizzBuzz++;
}

// variation 2


var fizzBuzz = 1;

while (fizzBuzz < 101) {
  if (fizzBuzz % 3 == 0 && fizzBuzz % 5 == 0)
    console.log("FizzBuzz");
  else if (fizzBuzz % 3 == 0)
    console.log("Fizz");
  else if (fizzBuzz % 5 == 0)
    console.log("Buzz");
  else
    console.log(fizzBuzz);
  fizzBuzz++;
}


// Chess Board

var counter = 1;
var board = (" # # # #\n# # # #");


while(counter < 4) {
  console.log(board);
  counter++;
}

console.log(board);

// Chess Board part 2 (input size)


var size = 20;
var board = "";

for (var y = 0; y < size; y++) {
  for (var x = 0; x < size; x++) {
    if ((x + y) % 2 == 0)
      board += " ";
    else
      board += "#";
  }
  board += "\n";
}

console.log(board);

/*
Reflections on Chess Board exercise:

full disclosure: I puzzled over this for a while, then looked at the
solution. As I look at the solution, I have a hard time following the
logic regarding how the board accurately reads where to insert the
newline (\n). Or, for that matter, how it knows when to insert a #. It
seems like whenever y increases, x must increase as well... but this
can't be true, because then x + y would always be even, and thus x + y
% 2 would always == 0. I guess there's something about the for loop
within the for loop that I'm not understanding yet, that allows both
of these things (insert # after space, and put the new line at the
correct position) to happen.


*/

// Functions

// Complete the `minimum` exercise.

function min(a, b) {
  if (a < b)
    return a;
  else
    return b;
}

console.log(min(0, 10));




// Data Structures: Objects and Arrays

// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "James Artz",
  age: 37,
  favoriteFoods: ["Pasta Marinara", "Lobster", "Blueberries"],
  quirk: "My cats are immigrants"
};



console.log(me);
