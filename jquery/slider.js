$('.slider').each(function (){
    var $this = $(this);
    var $group = $this.find('slide-group');
    var slides = $this.find('.slide');
    var buttonArray = [];
    var currentIdenx = 0;
    var timeout

    function move(newIndex) {
        var animateLeft, sliderLeft;

        advance();

        // If it is the current slide / animating do nothing
        if($group.is(':animated') || currentIdenx === newIndex) {
            return;
        }

        buttonArray[currentIdenx].removeClass('active');
        buttonArray[newIndex].addClass('active');

        if(newIndex > currentIdenx) {
            sliderLeft = '100%';
            animateLeft = '-100%';
        } else {
            sliderLeft = '-100%';
            animateLeft = '100%';
        }
        // Position new slide to  left ( if less ) or right (if more) of current
        $slides.eq(newIndex).css({left: sliderLeft,display: 'block'});

        $group.animate({left : animateLeft} ,function (){
            $slides.eq(currentIdenx).css({display: 'none'});
            $slides.eq(newIndex).css({left : 0});
            $group.css({left:0});
            currentIdenx = newIndex;
        });
    }

    function advance(){
        clearTimeout(timeout);
        timeout = setTimeout(function (){
            if (currentIdenx < ($slides.length - 1)){
                move(currentIdenx + 1);
            } else {
                move(0);
            }
        } , 4000);
    }

    $.each($slides , function (index){
        //Create a button element for the button
        var $button = $('<button type="button" class="slide-btn">&bull;</button>');
        if (index === currentIdenx) {
            $button.addClass('active');
        }
        $button.on('click' , function () {
            move(index);
        }).appendTo('.slide-buttons');
        buttonArray.push($button);
    });

    advance();
});