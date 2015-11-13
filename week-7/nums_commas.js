// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Amaar Fazlani.

/*

Pseudocode

Input: an integer greater than 0, and less than 1 million.
Output: a string, with commas added (see below for placement of commas).

Steps:

If number is less than 0, raise an error

If the length of the number is less than or equal to 3, there is no
comma.

If the length of the number is equal to 4-6, insert 1 comma, 3 digits
in from the end of the number.

If the length of the number is equal to 7-9, insert 2 commas, the
first three digits in from the end of the number, the second 6 digits
in from the end of the number.

If the length of the number is equal to 10, insert 3 commas, the first
three digits in from the end of the number, the second 6 digits in
from the end of the number, the 3rd 9 digits in from the end of the
number.

*/


// Initial Solution



function separateComma(number) {

  if(number.toString().length == 4) {
    var a = number.toString();
    var b = ",";
    var position = 1;
    var array = a.split('');
    array.splice(position, 0, b);
    var output = array.join('');
    console.log(output);
  }
  else if(number.toString().length == 5) {
    var a = number.toString();
    var b = ",";
    var position = 2;
    var array = a.split('');
    array.splice(position, 0, b);
    var output = array.join('');
    console.log(output);
  }
  else if(number.toString().length == 6) {
    var a = number.toString();
    var b = ",";
    var position = 3;
    var array = a.split('');
    array.splice(position, 0, b);
    var output = array.join('');
    console.log(output);
  }
  else if(number.toString().length == 7) {
    var a = number.toString();
    var b = ",";
    var position1 = 1;
    var position2 = 5;
    var array = a.split('');
    array.splice(position1, 0, b);
    array.splice(position2, 0, b);
    var output = array.join('');
    console.log(output);
  }
    else if(number.toString().length == 8) {
    var a = number.toString();
    var b = ",";
    var position1 = 2;
    var position2 = 6;
    var array = a.split('');
    array.splice(position1, 0, b);
    array.splice(position2, 0, b);
    var output = array.join('');
    console.log(output);
  }
    else if(number.toString().length == 9) {
    var a = number.toString();
    var b = ",";
    var position1 = 3;
    var position2 = 7;
    var array = a.split('');
    array.splice(position1, 0, b);
    array.splice(position2, 0, b);
    var output = array.join('');
    console.log(output);
  }
    else if(number.toString().length == 10) {
    var a = number.toString();
    var b = ",";
    var position1 = 1;
    var position2 = 5;
    var position3 = 9;
    var array = a.split('');
    array.splice(position1, 0, b);
    array.splice(position2, 0, b);
    array.splice(position3, 0, b);
    var output = array.join('');
    console.log(output);
  }
}

separateComma(1234567890);



// Refactored Solution

var commaNum = function(num) {
    var array = num.toString().split('');
    var index = -3;
    while (array.length + index > 0) {
        array.splice(index, 0, ',');
        index -= 4;
    }
    console.log(array.join(''));
};

commaNum(1234567);

// the easiest solution, however, is to use the toLocaleString method,
// which does the operation 'magically', behind the scenes

nums = 1234567890;

console.log(nums.toLocaleString());



/* Reflections

What was it like to approach the problem from the perspective of
JavaScript? Did you approach the problem differently?

We had some problems getting the JS methods to work for us. I think at
this point it's just an issue of getting familiar and comfortable with
JS syntax. We knew what we wanted to do, but we kept getting tripped
up with error messages, and we couldn't figure out what was wrong with
our syntax - were we missing a ( ?, or a } ?, or a ;? or was our
number not being converted to a string? or an array? why wouldn't
console.log output something? the list goes on... Eventually we
succeeded in creating an MVP (the initial solution), that has a ton of
DRY, but gets the job done. But it took us way longer than it should
have, and we spent a ton of time just trying to get the basic code
syntax correct. When it finally ran, we didn't even really understand
what we had been doing wrong. It was like it finally just decided to
run, and we had just been flailing around trying code, getting errors,
changing things, and trying again, and in the end, we had the right
idea all along, but something just was keeping it from running
correctly. At one point we moved from coderpad to Sublime, and that
switch coincided with when we got the MVP/initial solution code to
run... I don't think getting the code to run had anything to do with
switching environments, but like I said, we're at a loss to explain
what was wrong with our code and what we changed to make it finally
work.

What did you learn about iterating over arrays in JavaScript?

I learned about using the split, splice, and join methods to
accomplish this. I'm still pretty new to all these methods, so each
time I use them, it's great practice. Hopefully someday I'll feel
comfortable and confident with all of them!


What was different about solving this problem in JavaScript?

In both this exercise and the ruby version, I succeeded at first by
creating an MVP that solved the problem in a rather 'crude' manner-
literally checking the length of the integer, and inserting commas
where appropriate. I had an easier time converting the number back and
forth between integer, string and array in ruby. Like I said above,
however, I think that may be more of a reflection of my newness to JS
than the capabilities of the language.


What built-in methods did you find to incorporate in your refactored
solution?

We flailed around on the initial solution for easily 2+ hours, so I
didn't have a ton of time to spend on the refactor, unfortnately. I
spent about 45 mins working on a refactor idea to iterate over the
array's index values and select just the ones I wanted as insertion
points, but after a while, I basically threw in the towel and searched
for the solution online. Turns out I was barking up the wrong tree by
iterating over each index value and checking to see if it was
divisible by something. I deduced on paper that, if the number is
reversed, the commas needed to be inserted at positions 3, 6, 9, 12,
etc., and therefore I thought if I could isolate index positions based
on modulus 3 returning 0, I could add the commas at the desired
positions. But in hindsight I realize this doesn't account for the new
array length after you add the comma - i.e., the insertion points
actually become 3, 7, 11, 15, etc (again, using a reversed integer).
So modulus-based selection of insertion points doesn't work. The
better solution is the one I found online, where you start with -3 as
the index value, and "add" that to the array length (i.e., subtract
it), and then subtract 4 from the index value, check versus array
length, etc. (see the refactored solution for the code). And the all-
knowing interwebs also clued me in to the simplest solution, a method
that seems like it's basically designed for this challenge-
toLocaleString, which magically adds commas to nums like a boss.

I'll paste my refactor attempt below, and put the successful,
internet-help results in the refactor above. Hopefully, me code pretty
someday.

*/


var nums = 1234567890;
var letters = nums.toString().split('').reverse();

for (var indexPosition = 0; indexPosition < letters.length; indexPosition++) {
  if ((indexPosition % 3) === 0) {
    commaNum = letters.splice(indexPosition, 0, ",");
    console.log(commaNum.join(' '));
  }
}

console.log(letters.reverse().toString());
// the sadly strange output of this code is as follows:
// 1,2,,,3,4,,,5,6,,,7,8,,,9,0,,

