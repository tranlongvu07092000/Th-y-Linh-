function setUp(){ // declare function
    var textInput; // create variable
    textInput =document.getElementById('username'); // get username input
    textInput.focus(); // Giver username focus
}

window.addEventListener('load',setUp,false); // when page loaded call setup()


/* LONGER VERSION WITH IE8 (and lower) compatibility

    if(el.addEventListener) {
    el.addEventListener('click' , function(e) {
    itemDone(e);
    },false);
    } else {
    el.attachEvent('onload',function(e){
    itemDone(e);
    })
 */