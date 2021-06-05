function getTarget(e) {
    if(!e){
        e = window.event;
    }
    return e.target || e.srcElement;
}


function itemDone(e){
    // remove item from the list
    var target, elParent , eGrandparent;
    target = getTarget(e);

    /*
    The book  used the following  code - but  it had two shortcomings
    -click between list items would remove the whole list
    -click on italic text would remove the link - not the list item

    elParent = target.parentNode;
    elGrandparent = target.parentNode.parentNode;
    elGrandparent.removeChild(elParent);

    The next 10 lines improve that example
     */

    if(target.nodeName.toLowerCase() == "a"){
        elListItem = target.parentNode;
        elList = elListItem.parentNode;
        elList.removeChild(elListItem);
    }
    if(target.nodeName.toLowerCase()== "em"){
        elListItem = target.parentNode.parentNode;
        elList = elListItem.parentNode
        elList.removeChild(elListItem);
    }

    // prevent the link from talking you elsewhere
    if(e.preventDefault){
        e.preventDefault();
    } else {
        e.returnValue = false;
    }
}

// Set up event listeners to call itemDone() onclick
var el = document.getElementById('shoppingList'); //Get shopping list
if (el.addEventListener){
    el.addEventListener('clcik',function (e ){
        itemDone(e);
    },false);
}