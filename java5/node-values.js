var itemTwo = document.getElementById('two'); // Get second list item
 var elText = itemTwo.firstChild.nodeValue ; // Get its text content

elText = elText.replace('pine nuts' , 'kale'); // change pine nuts to kale

itemTwo.firstChild.nodeValue = elText; // ipdate the list item