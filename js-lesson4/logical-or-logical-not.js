var score1 = 8; // round 1 score
var score2 = 8; // round 2 score
var pass1 = 6; // round 1 pass mark
var pass2 = 6; // round 2 pass mark

// Check Whether user passed one of the two rounds , store result in variable
var minPass = ( score1 >= pass1 ) || (score2 >= pass2);

//Create message
var msg = 'Resit requied :' : !minPass;

// Write the message into the page
var el = document.getElementById('answer');
el.textContent = msg;
