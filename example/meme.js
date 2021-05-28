var message;

var userSign;

var totalTile = 14;

var subTotal = 70;

var shipping = 7;

var grandTotal = subTotal + shipping;

message = 'Howdy Molly,please check your order :';
userSign = 'Montague House';
var el = document.getElementById('greeting');
el.textContent = message;

var elTitle = document.getElementById('userSign');
elTitle.textContent = userSign;

var elNumber = document.getElementById('tiles');
elNumber.textContent = totalTile;

var elTotal = document.getElementById('subTotal');
elTotal.textContent = '$' + 70;

var elShipping = document.getElementById('shipping');
elShipping.textContent = '$' + 7;

var elGrand = document.getElementById('grandTotal');
elGrand.textContent = '$' + grandTotal;
