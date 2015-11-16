
/*

Game Title: Raiders of the Lost Ark

Pseudocode

Object of game: move character (Indiana Jones) to a goal (lost Ark); avoid being found by the Nazi.

Create the 3 characters (objects) in the game: Indiana Jones, Nazi, and Ark.

Indiana Jones will be able to move around on a coordinate plane. Size will be 10 x 10 units.
  Output Indy's position on the plane each time he moves.

Ark will be randomly positioned in the coordinate plane.

Nazi's position will be randomly generated each time Indy moves.

Create a while loop that continues the game play unless:
  Indy finds the Ark
  The Nazi finds Indy

*/


// Setup variables
var indianaJones,
  lostArk = {},
  nazi = {},
  gamePlaying = true;

indianaJones = {
  posX: 0,
  posY: 0,
  move: function(direction) {
    if (direction === 'forward') {
      this.posX += 1;
    } else if (direction === 'up') {
      this.posY += 1;
    }
    console.log("Indy's position is " + this.posX + "," + this.posY);
  }
};

// Game loop
function play() {
  var direction;
  setupGame();

  while (gamePlaying === true) {
    direction = prompt("Which direction, Dr. Jones?? (hint: up or forward)", "");
    moveNazi();
    indianaJones.move(direction);
    update();
  }
}

// Set the Ark's position at the beginning of the game, and output to the user indy's position and the Ark's
function setupGame() {
  lostArk.posX = Math.floor((Math.random() * 10) + 1);
  lostArk.posY = Math.floor((Math.random() * 10) + 1);
  console.log("The Ark's position is " + lostArk.posX + "," + lostArk.posY);
  console.log("Indy's position is " + indianaJones.posX + "," + indianaJones.posY);
}

// After Indy moves, the Nazi moves to a new random position
function moveNazi() {
  nazi.posX = Math.floor((Math.random() * 10) + 1);
  nazi.posY = Math.floor((Math.random() * 10) + 1);

  console.log("Nazi's position is " + nazi.posX + "," + nazi.posY);
}

// Update game status:
// After every move, check if gone too far, Nazi found Indy, you hit the ark and won, or if you're still in the game
function update() {
  if (indianaJones.posX > lostArk.posX || indianaJones.posY > lostArk.posY) {
    gamePlaying = false;
    console.log("You went past the Ark! You lose!");
  } else if (indianaJones.posX === nazi.posX && indianaJones.posY === nazi.posY) {
    gamePlaying = false;
    console.log("The Nazi found you! Game Over!");
  } else if (indianaJones.posX === lostArk.posX && indianaJones.posY === lostArk.posY) {
    gamePlaying = false;
    console.log("You found the Ark! Congratulations, Dr. Jones!!");
  } else {
    gamePlaying = true;
    console.log("No time for love, Dr. Jones! You're still playing!");
  }
}

play();


/*

Reflections

What was the most difficult part of this challenge?

The hardest part was setting up the while loop that would enable the
game to continue playing until 1 of 3 outcomes occurred- either Indy
finds the ark, the Nazi finds Indy, or Indy "falls off the edge of the
grid." It looks pretty simple in this solution (I'm sorry, I ended up
refactoring on top of my initial solution, and by the time I realized
that I hadn't created a copy, there wasn't much left of my initial
solution to save), but it was tough to wrap my head around that
simplicity, especially in JavaScript.


What did you learn about creating objects and functions that interact
with one another?

I'm still getting used to .this being used to refer to objects within
functions and within objects. I got a lot of practice with the dot
notation, which was helpful. At this point all the practice that I get
is helpful

Did you learn about any new built-in methods you could use in your
refactored solution? If so, what were they and how do they work?

I used math.floor and math.random to generate the positions of the
characters/objects. Besides that, there's actually not a lot of built-
in methods.

How can you access and manipulate properties of objects?

Using the dot notation. Sorry, I can't think about JS anymore, my
brain is mush :(
