var elList ,addLink , newEl , newText ,counter , listItems; //declare variable

elList =document.getElementById('list'); // get list
addLink = document.querySelector('a'); // get add item button
counter = document.getElementById('counter'); // get itemcounter

function addItem(e) {
    e.preventDefault();
    newEl = document.createElement('li');
    newText = document.createTextNode('New list item');
    newEl.appendChild(newText);
    elList.appendChild(newEl);
}

function updateCount(){
    listItems = elList.getElementsByTagName('li').length;
    counter.innerHTML = listItems;
}

addLink.addEventListener('click', addItem,false);
elList.addEventListener('DOMNodeInserted', updateCount,false);
