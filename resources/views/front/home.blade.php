@extends('front.layout.head')
@section('description')
Haggle Free Base Price Guaranteed
@endsection
@section('title')
Online Solar | Haggle Free Base Price Guaranteed
@endsection
@section('contents')
<section class="hero_section">
<div class="container">
<div class="row">
<div class="col-md-12 col-xs-12 logo_div">
<a class="hide-mobile" href="{{url('/')}}">
<img src="{{asset('frontassets/images/logo-without-hand2.png')}}" class="img-responsive" />
</a>

<a class="show-mobile" href="{{url('/')}}">
<img src="{{asset('frontassets/images/logo.png')}}" class="img-responsive" />
</a>

</div>
</div>

<script>
  
</script>


<div class="centre image-hand" >
  <div id="image">
    <!--Logo Here-->
    <img class="hide-mobile" src="{{asset('frontassets/images/hand.png')}} " id="myImage" style="position:absolute;"/>
  </div>
  
</div>





<div class="row">
<div class="col-md-12 col-xs-12 youtube_video_div">
<div class="youtube_video_div_inner ">
    
    
<button onclick="playVid()" type="button" class="hide-play" style="">Play Video</button> 
    
<!-- <iframe width="100%" height="430" src="https://www.youtube.com/embed/ScMzIvxBSi4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe> -->
<video id="myVideo" width="100%" height="auto" 
preload="metadata" muted   controls  controlsList="nodownload" allow="autoplay">
  <source src="{{asset('/frontassets/video/STICK_PRE_Online_Solar_NEW_VO_3.mp4')}}" type="video/mp4">
  Your browser does not support HTML5 video.
</video>
</div>
</div>
</div>

<script>

myVideo.addEventListener('loadedmetadata', function() {
    if (myVideo.buffered.length === 0) return;

    var bufferedSeconds = myVideo.buffered.end(0) - myVideo.buffered.start(0);
    console.log(bufferedSeconds + ' seconds of video are ready to play!');
  });


var vid = document.getElementById("myVideo"); 
function playVid() { 
    vid.play(); 
} 

function pauseVid() { 
    vid.pause(); 
}




var interval1;

setTimeout(function() {
    interval1 = setInterval(function() {
    $("#myImage").animate({top: "+=495" , left: "+=215"}, 2000);
    $(document).ready(function() {
          $('#myImage').delay(2000 , function(){
              $('.hide-play').trigger('click');
                clearInterval(interval1);          
                 $('#myImage').css({ "top": "0px","left": "0px",   "transition":"2s"   });
                
              
            });
            
                
                
          });
    
   
    
      
    
});
     
   
});
    
  
   







    

</script> 


<div class="row">
<div class="col-md-12 col-xs-12 text-center hero_caption">
<h3 class=" wow fadeInUp">
You've come to the right place to save thousands of
dollars on a solar system.
</h3>
<p class="wow fadeInUp">
<strong>
It’s no mystery that the best deals are found online, so why should solar be any different?
</strong>
</p>
@if(Auth::user())
<a href="{{url('/register')}}" class="btn_theme">GET STARTED</a>
@else
<a href="{{url('/register')}}" class="btn_theme">REGISTER NOW</a>
@endif
</div>
</div>
</div>
<div id="particles-js"></div>
</section>
<section class="service_section">
<div class="container text-center">
<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12 text-center">
<h2 class="wow fadeInUp">Our Services</h2>
</div>
</div>
<div class="row">
<div class="col-md-3 col-sm-6 col-xs-12 service_box">
<div class="service_box_inner">
<img src="{{asset('frontassets/images/service_icon_1.png')}}" class="img-responsive wow fadeInUp" alt="" />
<h5 class="wow fadeInUp">SOLAR<br />PANELS</h5>
</div>
</div>
<div class="col-md-3 col-sm-6 col-xs-12 service_box">
<div class="service_box_inner">
<img src="{{asset('frontassets/images/service_icon_2.png')}}" class="img-responsive wow fadeInUp" alt="" style="animation-delay: 0.5s;"/>
<h5 class="wow fadeInUp" style="animation-delay: 0.8s;">SOLAR<br />BATTERIES</h5>
</div>
</div>
<div class="col-md-3 col-sm-6 col-xs-12 service_box">
<div class="service_box_inner">
<img src="{{asset('frontassets/images/service_icon_3.png')}}" class="img-responsive wow fadeInUp" alt="" style="animation-delay: 1.1s;" />
<h5 class="wow fadeInUp" style="animation-delay: 1.3s;">SOLAR<br />INVERTER</h5>
</div>
</div>
<div class="col-md-3 col-sm-6 col-xs-12 service_box">
<div class="service_box_inner">
<img src="{{asset('frontassets/images/service_icon_4.png')}}" class="img-responsive wow fadeInUp" alt="" style="animation-delay: 1.6s;" />
<h5 class="wow fadeInUp" style="animation-delay: 1.8s;">PORTABLE<br />KITS</h5>
</div>
</div>
</div>
</div>
</section>
<section class="counter_section">
<div class="container">
<div class="col-md-4 col-sm-4 col-xs-12 counter_box">
<div class="counter_box_inner">
<h4 class="wow fadeInUp" style="animation-delay: 0.8s;"><i class="fa fa-clock-o"></i> 10</h4>
<h5 class="wow fadeInUp" style="animation-delay: 1s;">YEARS WORKING</h5>
</div>
</div>
<div class="col-md-4 col-sm-4 col-xs-12 counter_box">
<div class="counter_box_inner">
<h4 class="wow fadeInUp" style="animation-delay: 1.2s;"><i class="fa fa-clock-o"></i> 2000</h4>
<h5 class="wow fadeInUp" style="animation-delay: 1.4s;">SATISFIED CUSTOMERS</h5>
</div>
</div>
<div class="col-md-4 col-sm-4 col-xs-12 counter_box">
<div class="counter_box_inner">
<h4 class="wow fadeInUp" style="animation-delay: 1.6s;"><i class="fa fa-clock-o"></i> 1500</h4>
<h5 class="wow fadeInUp" style="animation-delay: 1.8s;">SOLAR SYSTEMS INSTALLED</h5>
</div>
</div>
</div>
</section>
<section class="testimonial_sec">
<div class="container text-center">
<h2 class="wow fadeInUp">What others have to say?</h2>
<div id="testimonial" class="owl-carousel owl-theme">
<div class="item wow fadeInUp">
<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum.</p>
<h4>John Doe <br /><small>Houston, Texas</small></h4>
</div>
<div class="item wow fadeInUp">
<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum.</p>
<h4>John Doe <br /><small>Houston, Texas</small></h4>
</div>
<div class="item wow fadeInUp">
<p>Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum.</p>
<h4>John Doe <br /><small>Houston, Texas</small></h4>
</div>
</div>
</div>
</section>
@endsection