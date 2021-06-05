var elUsername = document.getElementById('username'); // Get username input
var elMsg = document.getElementById('feedback'); //get feedback Element

function checkUsername(minLength) {
    if(elUsername.value.length < minLength){
        // Set message
        elMsg.innerHTML = 'Username must be ' + minLength + 'character or more';
    } else {
        elMsg.innerHTML = '';
    }
}


if(elUsername.addEventListener) {
    elUsername.addEventListener('blur',function (){
        checkUsername(5);
    }, false)
} else {
    elUsername.attachEvent('onblur' , function (){
        checkUsername(5);
    });
}