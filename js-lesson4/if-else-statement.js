var score = 75; // Score
var msg = ''; //Message

if(score >= 50){// if score is 50 or higher
    msg = 'Congratulation!';
    msg += 'Proceed to the next round.';
}

var el = document.getElementById('answer');
el.textContent = msg;