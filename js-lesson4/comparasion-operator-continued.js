var score1 = 90; // round 1 score
var score2 = 95; // round 2 score
var highScore1 = 75; //  round 1 high score 
var highScore2 = 95; // round 2 high score


// Check if score are higher than current  high scores
var comparison = (score1  + score2)     > (highScore1 + highScore2);

//write the message into thhe page
var el = document.getElementById('answer');
el.textContent = ' New  high score : ' + comparison;