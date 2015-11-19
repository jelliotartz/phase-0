 // JavaScript Olympics

// I paired with Becky Lehmann on this challenge.

// This challenge took me 3 hours.


// Bulk Up

var athletes = {
  name: {},
  event: {}
};

function win(athletes) {
  return athletes.name + " wins the " + athletes.event;
}

athletes.name = "Sarah Hughes";
athletes.event = "Hurdles";

console.log(win(athletes));

/* other examples of how to complete this challenge:

var athletes = [
  {name: "Hussein Bolt", event: "100 m. Dash"},
  {name: "Carrot Top", event: "Snowboarding"}
]

function winner(array) {
  var arrayLength = array.length;
  for (var i = 0; i < arrayLength; i++) {
    array[i].won = true;
    console.log(array[i].name + " won the " + array[i].event + " event!")
  }
}

winner(athletes)

*/

// Jumble your words

function reverse_string(string) {
  return string.split('').reverse().join('');
}

console.log(reverse_string("James"));


// 2,4,6,8

var inputArray = [1, 3, 4, 6, 7, 9, 8];
var evens = [];

for (var counter = 0; counter < inputArray.length; counter++) {
  if ((inputArray[counter] % 2) === 0) {
    evens.push(inputArray[counter]);
  }
}

console.log(evens);

// refactor for 2,4,6,8

var newEvens = inputArray.filter(function(number) {
  return (number % 2 === 0);
});

console.log(newEvens);

// top-secret
// var es2015Evens = inputArray.filter(n => n % 2 === 0);

// console.log(es2015Evens);


// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}


// DRIVER CODE

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);


/*

Reflection

What JavaScript knowledge did you solidify in this challenge?

At this point in my JS learning, nothing is solid, and everything is
good practice and experience. So, to sum up ALL the things I
practiced/gained experience with:

In "Bulk up" I got practice applying a function to an object and its
properties. More specifically, I took two object properties and
inserted them into a string.

In "Jumble your words" I got practice performing methods from the JS
library on a string - specifically, we used the split, reverse, and
join methods. This turns the string into an array before performing
the reverse method, and then turns it back into a string. Perhaps not
the most efficient code, but at least an MVP.

In "2 4 6 8", I got practice iterating over arrays and using push to
move elements into a new array.

In "We built this city" I learned about constructor functions!

What are constructor functions?

A constructor function is a way to create an object. It is different
than literal notation, which is better to use if you only require one
instance of an object. Constructor functions are preferred if you need
to do some initial work before the object is created or require
multiple instances of the object, where each instance can be changed
during the lifetime of the script.

Constructor functions have their properties defined with "this" in
front of them, followed by an equal sign, followed by an optional
semi-colon.

Regarding object declarations, constructor functions need to be
"instantiated", which means to create a new instance of the object.
The basic form is as follows:

var myNewObject = new myObject(); myNewObject.whatAmI();

How are constructors different from Ruby classes (in your research)?

Like much of my work so far with JS, at this point it seems like ruby
took a vague and complex idea from JS and made it simple, organized,
and clear. The idea of constructors seems like it's trying to
accomplish the same goal as ruby classes; can I tell you the exact
differences? Unfortunately, no. My experiences with constructors are
still pretty basic. And I'd probably need to create the same concept
in both a ruby class and a JS constructor to really get a handle on a
full answer to this question (idea light bulb goes on for weekly tech
blog assignment).

*/

