var hotItems = document.querySelectorAll('li.hot'); // Store Nodelist in array
if (hotItems.length > 0){           // if it contains items
    for (var i= 0 ; i < hotItems.length; i++){ // loop through rach item
        hotItems[i].className = 'cool'; //Change value of class attribute
    }
}