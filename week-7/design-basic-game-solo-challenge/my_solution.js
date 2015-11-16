//  TIPS:

// 1. removed set coordinates function and just put the code as the value of the ark's positions--
//    at first I thought you were going to use a random position generator lots of times, but since 
//    you're only using it there, it doesn't need to be a separate function
// 2. got rid of the indianaJones.success property setting in update() since that isn't used anymore
// 3. Formatted the indents to 2 spaces, it's just easier to read and commonly done though i think
//    technically it's "proper" to do 4. 
// 4. Formatted the functions logically:
//    internally--within functions, empty line after logically different sections
//    externally, between functions, 1 empty line (excluding toplevel comments)
// 5. Order of functions: put your variables at the top (both declaration and definitions),
//                        next put your "driving" functions like game play, 
//                        next put your supporting functions 
//                        finally, your code that is called to actually trigger the game
//                        
//    this is nice because a reader can look at your play() function and then scroll only 1 direction,
//    down, to look at the details of each function that's called.
//    

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

// Set the ark's position and output to the user indy's position and the ark's
function setupGame() {
  lostArk.posX = Math.floor((Math.random() * 10) + 1);
  lostArk.posY = Math.floor((Math.random() * 10) + 1);

  console.log("The Ark's position is " + lostArk.posX + "," + lostArk.posY);
  console.log("Indy's position is " + indianaJones.posX + "," + indianaJones.posY);
}

// After indy moves, the Nazi moves to a new random position
function moveNazi() {
  nazi.posX = Math.floor((Math.random() * 10) + 1);
  nazi.posY = Math.floor((Math.random() * 10) + 1);

  console.log("Nazi's position is " + nazi.posX + "," + nazi.posY);
}

// Update game status:
// After every move, check if gone too far, nazi found indy, you hit the ark and won, or if you're still in the game
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
    console.log("You're still playing");
  }
}

play();