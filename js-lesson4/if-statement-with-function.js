var score = 75; //score
var msg = '' ;// Message

function congratulate(){
    msg += 'Congratulation!';  
}

if(score >= 50){// If score is 50 or more
    congratulate();
    msg += 'Proceed to the text round';
}


var el = document.getElementById('answer');
el.innerHTML = msg;