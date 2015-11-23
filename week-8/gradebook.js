/*
Gradebook from Names and Scores
I worked on this challenge with Gregory Balthasar Wehmeier.
This challenge took me 2 hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.


function makeGradebook(nameArray, gradesArray){
  var output = {};
  for (var i = 0; i < nameArray.length; i++) {
    output[nameArray[i]] = {};
    output[nameArray[i]].testScores = gradesArray[i];
  } 
  
  output.addScore = function (name, score) {
    output[name].testScores.push(score);
  };
  
  output.getAverage = function (name) {
    return average(output[name].testScores);
  };
  
  return output;  
}

var average = function (intArray) {
    var total = 0;
    for (var j = 0; j < intArray.length; j++) {
      total += intArray[j];
    };
    return (total / intArray.length);
  };


// Driver code
// console.log(gradebook);
// console.log(gradebook.getAverage("Susan"));


// __________________________________________
// Refactored Solution


function makeGradebook(nameArray, gradesArray){
  var output = {};
  
  for (var i = 0; i < nameArray.length; i++) {
    output[nameArray[i]] = {};
    output[nameArray[i]].testScores = gradesArray[i];
  } 
  
  output.addScore = function (name, score) {
    output[name].testScores.push(score);
  };
  
  output.getAverage = function (name) {
    return average(output[name].testScores);
  };
  
  return output;  
}

var average = function (intArray) {
    return (intArray.reduce(function(x,y){ return x + y; }) / intArray.length );
  };
  
 
var gradebook = makeGradebook(students, scores);

// Driver code
// console.log(gradebook);
// console.log(gradebook.getAverage("Susan"));


/* other solutions to the challenge: 

var gradebook = {
  addScore: function(name, score) {
    this[name].testScores.push(score)
  },
  getAverage: function(name) {
    return this[name].testScores.reduce(function(sum, next) {return sum + next;}) / this[name].testScores.length;
  }
};

for (var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {testScores: scores[i]};
};
console.log(gradebook);

// gradebook["getAverage"] = function(name) {
//   return average(gradebook[name].testScores);
// };

function average(array) {
  return array.reduce( function(sum, next) { return sum + next; }) / array.length;
}
console.log(gradebook);



####### another approach: ###########

var gradebook = {
  Joseph: { testScores: scores[0]},
  Susan: {testScores: scores[1]},
  William: {testScores: scores[2]},
  Elizabeth: {testScores: scores[3]},

  addScore: function(name,score) {
      gradebook[name].testScores.push(score);
  },

   getAverage: function(name) {
       var studentArray = gradebook[name].testScores
     return average(studentArray)
      },
};
//used .forEach instead of a for loop
function average(array) {
  var total = 0
  array.forEach(function(numbers){
    total += numbers
  })
  return total/array.length
};



/*






// __________________________________________
// Reflect

/*

What did you learn about adding functions to objects?

This was a very helpful exercise for getting practice with adding
functions to objects. While it may not have been the first time that
I've added a function to an object, this exercise was a step up from
doing something simple like demonstrating that I can push an integer
into an array, or add something to a string.

More specifically, we began by creating a function, makeGradebook,
that would perform the tasks necessary to create the object gradebook.

Inside the makeGradebook function, we began by creating an empty
variable, output, and then we iterated over the array of students'
names. We created an empty object output[nameArray[i]], and then set
output[nameArray[i]] equal to gradesArray[i].

This process, by the way, was very educational for me. Although I'm
familiar with everything we did, and I can write it up in a logical
step-by-step manner, the nexus of nitty-gritty logic and its
successfull implementation via JS is still elusive for me. I doubt I
could have pulled this off without Gregg's help and guidance.

This for loop accomplished the task of creating our gradebook object,
once we simply set gradebook equal to makeGradebook(students, scores).

We then added two functions to the object output - the addScore
function, and the getAverage function. We did this using dot notation
(output.addScore and output.getAverage), and both of these have about
1 line of code in the curly braces.

We also created an average function, but this one is outside of the
makeGradebook function - I realize this is probably intention on the
part of DBC, illustrating difference in scope, but it tripped us up
for a bit, as we were able to perform the task with average inside
makeGradebook, but we weren't passing the test code specs. We
eventually moved the average function outside makeGradebook, and
problem solved.

I found it interesting that getAverage can use the average function
even though they have different scopes. I'm not sure how big of a deal
this is, but as I'm still getting comfortable with JS syntax and
rules, it's good practice for me to think about it and reflect on it.


How did you iterate over nested arrays in JavaScript?

We used what I'm thinking is the standard notation for iterating over
arrays in JS: (var i = 0; i < nameArray.length; i++). We fooled around
with trying to use map to accomplish the task, but so far no dice. I
have a feeling this is possible though. I'll paste the nitty-gritty
description that I wrote above regarding this for loop, which pretty
much answers this question:

Inside the makeGradebook function, we began by creating an empty
variable, output, and then we iterated over the array of students'
names. We created an empty object output[nameArray[i]], and then set
output[nameArray[i]] equal to gradesArray[i]. Running this for loop
accomplished the task of creating our gradebook object, once we simply
set gradebook equal to makeGradebook(students, scores).


Were there any new methods you were able to incorporate? If so, what
were they and how did they work?

We used reduce in the refactored solution to accomplish the average
function. I had had some practice with using push, but it was good to
get more practice with it. Same for the for loop. I know it's super
basic, but I'm still getting comfortable with the basics, so it's all
good practice for me.


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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)