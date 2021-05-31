function getArea(width , height){
    var el = document.getElementById('message');
    el.textContent = "Area is" + width*height;
}

// Call the function
getArea(width : 3 , height: 5);