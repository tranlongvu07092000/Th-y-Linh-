var firstItem = document.getElementById('one'); // Get the first item
firstItem.className = 'complete';

var fourthItem = document.getElementsByTagName('li').item(3); // get fourth item

//NOTE : the following line should say  fourthItem (not el 2)
fourthItem.setAttribute('class', 'cool'); // add an attribute to it