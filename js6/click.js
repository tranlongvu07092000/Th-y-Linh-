// Create the HTML for message
var msg = '<div class = \"header\"><a id=\"close\" href="#">Close X</a></div>';
msg += '<div><h2>System Maintenance</h2>';
msg += 'Our servers are being update between 3 and 4 a.m .';
msg += 'During  this time , there may  be minor disruptions to service.</div>';

var elNote = document.createElement('div'); // Create a new element
elNote.setAttribute('id','note'); // Add an id of note
elNote.innerHTML = msg;
document.body.appendChild(elNote); //Add it to the page

function dismissNote(){                 // Declare function
    document.body.removeChild(elNote); //Remove the note
}

var elClose = document.getElementById('close'); // Get the close button
elClose.addEventListener('click' , dismissNote, 'false'); //Click close-clear note