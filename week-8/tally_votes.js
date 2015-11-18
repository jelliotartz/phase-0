// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Jon Clayton
// This challenge took me 3 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/*
Pseudocode for function to populate voteCount

Input: nested object  

Output: function doesn't return anything, but changes var voteCount 
to tally the votes in the input object.

steps:

Loop outside: iterate over the nested input object, which will allow
us to operate one at a time on each ballot, which includes votes for
multiple offices.

Loop inside: iterate over each ballot, inspecting each individual vote
(a single office/candidate combination).

[create the office/candidate combo within voteCount, if necessary]

Add 1 to the number of votes received by the candidate for the office. 


*/

// __________________________________________
// Initial Solution



function tally(votes) {
  for (var voter in votes) {
    for (var office in votes[voter]) {
      if (voteCount[office][votes[voter][office]] == undefined) {
        voteCount[office][votes[voter][office]] = 0
      }
      voteCount[office][votes[voter][office]] += 1;
    }
  }  
};


tally(votes);
// console.log(voteCount);

/* 

The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. 


*/
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}


/*

pseudocode

input: nested object.
output: pick a property from input nested object based on the steps below.

steps

Outside loop: iterate over nested object, which will allow us to operate on each office individually.

Inside loop: iterate over each office, operating on candidate names.

[Set officers["president"] as undefined]

if office is undefined, give current candidate the office

set office to the current candidate if that candidate has more votes than the current officer.

Identify the highest value associated with the candidate names.

*/

function officeMaker (voteCount) {
  for (var office in voteCount) {
    for (var candidate in voteCount[office]) {
      if (officers[office] == undefined) {officers[office] = candidate};
      if (voteCount[office][candidate] > voteCount[office][officers[office]]) {
        officers[office] = candidate;
      }
    }
  }
}

officeMaker(voteCount);


// __________________________________________
// Refactored Solution

/* We couldn't find any significant ways to refactor these functions.
/* Let us know if anything comes to mind!

// __________________________________________
// Reflection

/*

What did you learn about iterating over nested objects in JavaScript?

The for...in sequence is a useful method for iterating over nested
objects in JS. You can create variables within the for...in sequence,
no need to declare empty variables beforehand.

Were you able to find useful methods to help you with this?

We looked up the for...in statement in the MDS guide, but that was
about the only 'method' we utilized. We used if conditions in the
officeMaker function, but that's not really a method.

What concepts were solidified in the process of working through this challenge?

I'm still getting comfortable with the basics, so it's all good
practice for me. The for...in statement was a good concept to get
practice with, and working with nested objects is also still less than
100% clear and easy for me.


*/





// __________________________________________
// Test Code:  Do not alter code below this line.




function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)


