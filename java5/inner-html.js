// Store the first item in a variable
var firstItem = document.getElementById('one');

// Get the content of the list item
var itemContent = firstItem.innerHTML;

// Update the content of the first list item so it is a link
firstItem.innerHTML =  '<a href=\"http://example.org\">' + itemContent + '</a>';