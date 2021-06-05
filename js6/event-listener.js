function checkkUsername(){
    var elMsg = document.getElementById('feedback');
    if(this.value.length < 5 ){
        elMsg.textContent = 'Username must be 5 character or more';
    } else {
        elMsg.textContent = '';
    }
}

var elUsername = document.getElementById('username');
// when it loses focus call checkusername()
elUsername.addEventListener('blur',checkkUsername,false);