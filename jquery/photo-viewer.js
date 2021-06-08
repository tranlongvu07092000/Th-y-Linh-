var request;   //Latest image to be request
var $current;  // Image currently being shown
var cache = {}; // cache object
var $frame = $('#photo-viewer'); //container for image
var $thumbs = $('.thumb'); // thumbnails

function crossfade($img) { // Function to fade between images
                            // Pass in new image as parameter
    if ($current){          // If there is currently an image showing
        $current.stop().fadeOut('slow'); //stop any animation & fade it out
    }

    $img.css({                          // Set the Css margins for the image
        marginLeft: -$img.width() / 2,   // Negative margin of half image's width
        marginTop: -$img.hieght() /2      // Negative margin of half image's height
    })

    $img.stop().fadeTo('slow',1);    // Stop animation on new image & fade in

    $current = $img;                 // New image becomes current image
}


$(document).on('click','thumb',function (e){  // When a thumb is clicked on
        var $img,                             // Create local variable called  $img
            src = this.href;                  // store path to image
        request = src;                        // Store lastest image request

    e.preventDefault();

    $thumbs.removeClass('active');              // Remove active from all thumbs
    $(this).addClass('active');                 // Add active to clicked thumb

    if(cache.hasOwnProperty(src)) {             // If cache contains this page
        if(cache[src].isLoading === false) {    // And if isLoading  is false
            crossfade(cache[src].$img);         //  Call crossfade function
        }
    } else {                                    // Otherwise it is not  in cache
        $img = $('<img/>');                     // Store empty <img/> element in $img
        cache[src] = {                          // Store this image in cache
            $img : $img,                        // Add the path to the image
            isLoading: true                     // Set isLoading property to false
        };
   // Next  few lines will run when image has loaded but are prepared first
        $img.on('load',function (){              // When  image has loaded
            $img.hide();                        // Hide it
   // remove is loading class from frame & append new image to it
            $frame.removeClass('is-loading').append($img);
            cache[src].isLoading = false;       // update isLoading in cache
    // If still most recently request image then
            if(request === src){
                crossfade($img);                //  Call crossfade function
            }                                   // Solves asynchoronous loading issure
        });

        $frame.addClass('is-loading');          // add iss-loading class  to frame

        $img.attr({                             // Set attributes on <img/> element
            'src':src,                          // add src attributes to load image
            'alt':this.title || ''              // add title if one was given in link
        });
    }
});

// Final line  runs once when rest of script has loaded to show the first image
$('.thumb').eq(0).click();                      // Simulate clickk on first thumb

