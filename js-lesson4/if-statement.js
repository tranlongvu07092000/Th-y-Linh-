var score = 75; // score
var msg; // message

if ( score >= 50){// if score is 50 or higher
    msg = 'Congratulations!';
    msg += ' proceed to the next round.';
}

var el = document.getElementById('answer');
el.textContent = msg;