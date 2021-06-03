// Select the staring point and find its slibing
var startItem = document.getElementById('two');
var prevItem = startItem.previousSibling;
var nextItem = startItem.nextSibling;

// Change the value  of the slibing's class attribute
prevItem.className= 'complete';
nextItem.className = 'cool';