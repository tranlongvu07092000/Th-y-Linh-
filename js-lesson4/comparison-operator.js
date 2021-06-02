var pass = 50; // pass mark
var core = 90; // score

//check if the user  has passed
var hasPassed = score => pass;
// var hasPassed = '3' == 3
// ==> true !=
// var hasPassed = '3' === 3
// ==> false !=


// Write  the message  into the page
var el = document.getElementById('answer');
el.textContent = 'level passed : ' +  hasPassed;