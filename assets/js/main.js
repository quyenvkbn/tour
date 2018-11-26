$(document).ready(function(){

    // Mobile NAV expand

    $('#main-nav .btn-expand button#btn-expand').click(function(){
        $('#nav-device').animate({
            left : '0'
        }, 500);
        $('.main-page').animate({
            marginLeft : '90%',
            opacity : '0.5'
        }, 500);
    });

    $('#nav-device > .head > #nav-close').click(function() {
        $('#nav-device').animate({
            left : '-100%'
        }, 500);
        $('.main-page').animate({
            marginLeft : '0',
            opacity : '1'
        }, 500);
    });
    
    {
        //Active Transition HEADER on Scrolling
    
        $(window).scroll(function () {
            if ($(window).scrollTop() > 0) {
                $('header').addClass('active');
            }
            if ($(window).scrollTop() === 0) {
                $('header').removeClass('active');
            }
        });
    }
    
    {
        // navside on mobile
        
        let navMobile = 0;
        
        $('header #nav-expand #btn-nav-expand').click(function(){
            if(navMobile == 0){
                $('header .nav-main').addClass('active');
                $('#btn-nav-expand').addClass('active');
                navMobile = 1;
                }
            else{
                $('header .nav-main').removeClass('active');
                $('#btn-nav-expand').removeClass('active');
                navMobile = 0;
                }
        })
    }
});