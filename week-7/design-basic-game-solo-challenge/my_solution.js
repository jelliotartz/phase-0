 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Secure the Ark of the Covenant
// Goals: Find the Ark, avoid the Nazi.
// Characters: Indiana Jones, Nazi
// Objects: Ark of the Covenant.
// Functions: moveUp, moveDown, moveForward, moveBack

/*
Pseudocode

Create a player, "Indiana Jones," that will be able to move around a coordinate plane (up, down, forward, back).

Create four methods that will execute movement in these four directions.

Create a "Nazi" object and give it a random position.

Create an "lost Ark" object and give it a random position. This position will be fixed throughout the duration of the game.

Move Indiana Jones, and randomly reassign the position of the Nazi.

Check where Indiana Jones is in relation to the Nazi and the Ark.

Accept input for next move of Indiana Jones, UNTIL:

  If Indiana Jones moves and his grid coordinates are the same as the Ark, success!

    Output pithy "you won the game" message. END.

  If Indiana Jones moves and his grid coordinates are the same as the Nazi's, failure!

    Output pithy "you lost the game" message. END.

*/

// Initial Code


// Indiana Jones character
var indianaJones = {
  posX: 0,
  posY: 0,
  success: false,

  move:function(direction) {
    if(direction === 'forward'){
      this.posX +=1;
    }
    else if(direction === 'up'){
      this.posY += 1;
    }
};


// The objective: make IJ's posX and posY match this object's posX and posY
var lostArk = {

};

function setCoordinate() {
  return  Math.floor((Math.random()*10)+1);
}

// function to begin the game.
function setupGame() {
  lostArk.posX = setCoordinate();
  lostArk.posY = setCoordinate();
  indianaJones.posX = 0;
  indianaJones.posY = 0;
}


// When Indy moves, the Nazi moves to a new random position
nazi.posX = Math.floor((Math.random()*10)+1);
nazi.posY = Math.floor((Math.random()*10)+1);
console.log("Nazi's position is " + nazi.posX + "," + nazi.posY);




// ENDGAME
    // After every move, check if the Nazi has 'found' Indy
    if(indianaJones.posX === nazi.posX && indianaJones.posY === nazi.posY){
      console.log("The Nazi found you! Game Over!");
    }

    else if(indianaJones.posX === lostArk.posX && indianaJones.posY === lostArk.posY){
    indianaJones.success = true;
    console.log("You found the Ark! Congratulations, Dr. Jones!!");
    }



// MOVING INDIANA JONES

function isPlaying() {
  //
}

function play() {
  setupGame();

  var playing = true;

  while (playing) {
    playing = isPlaying();
  }
}

// Output Indy's position
console.log("Indy's position is " + indianaJones.posX + "," + indianaJones.posY);



/* NEW PSEUDOCODE

var indy
  posx
  posy
  success
  function:move



// the lost ark is set once, at game begin, and doesn't move.
var lostark
  lostArk.posX = setCoordinate();
  lostArk.posY = setCoordinate();


// the nazi moves around randomly each time indiana jones moves
var nazi = {
  // posX: Math.floor((Math.random()*10)+1),
  // posY: Math.floor((Math.random()*10)+1)
};


// function to begin the game.
function setupGame() {
  lostArk.posX = setCoordinate();
  lostArk.posY = setCoordinate();
  indianaJones.posX = 0;
  indianaJones.posY = 0;
}

// function that accepts input from user and moves IJ accordingly
  output result of user input as IJ's new coordinate position
  indianaJones.newposX =
  indianaJones.newposY =

  question- how to get user input?

    user will input one of two commands: forward or up.

    if user input = forward
      indianaJones.posX gets 1 added to it.

    if user input = up
      indianaJones.posY gets 1 added to it.

  After each move, output new position of IJ, also output new (ramdomly generated) position of nazi.






*/













function randomDirection() {

}
















console.log("The Ark is located at " + lostArk.posX + "," + lostArk.posY);


// indianaJones.move('up');
indianaJones.move('forward');




// Refactored Code






// Reflection

/*


*/