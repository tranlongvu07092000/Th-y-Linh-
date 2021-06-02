var scores = [24 , 32 , 17];// array of scores
var arrayLength = scores.length;//items is array
var roundNumber = 0;//Current round 
var msg = '';// message

// Loop through the items in the array
for ( var i = 0;i < arrayLength ; i++){
    // Arrays are zero based ( sô 0 is round 1)
    // adđ 1 to the current the round
    roundNumber = (i + 1);

    //Write the current round to message
    msg += ' Round ' + roundNumber + ':';

    //Get  the score from the scores array
    msg += score[i] + '<br />';
}

document.getElementById('answer').innerHTML = msg