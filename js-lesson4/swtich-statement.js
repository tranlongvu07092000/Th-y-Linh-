var msg; // Message
var level = 2; // Level

// Determine message based on  level
switch(level) {
    case 1 :
        msg = 'Goodluck on the first test';
        break;

    case 2:
        msg = 'Second of three - Keep going!';
        break;

    case 3 :
        msg = 'Finanl round , almost there!';
        break;

    default:
        msg = 'Good luck!';
        break;
}

var el = document.getElementById('answer');
el.textContent = msg;