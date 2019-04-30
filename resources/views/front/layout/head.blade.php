<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
<meta charset="utf-8">
<meta name="csrf-token" content="{{ csrf_token() }}">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="{{ asset('frontassets/images/favicon.png') }}" type="image/png" sizes="50x50">
<title>@yield('title')</title>
<meta name="description" content="@yield('description')">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,300,400,500,600,700" rel="stylesheet">
<link href="{{ asset('frontassets/css/owl.carousel.css') }}" rel="stylesheet">
<link href="{{ asset('frontassets/css/owl.theme.css') }}" rel="stylesheet">
<link href="{{ asset('frontassets/css/animate.css') }}" rel="stylesheet">
<link href="{{ asset('frontassets/css/style.css') }}" rel="stylesheet">
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDDUCHzlUnF7YwDC_OfKHAuHNkJ_BzIjoA&amp;sensor=false&amp;libraries=places"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{{ asset('frontassets/js/owl.carousel.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontassets/js/wow.js') }}"></script>
<script type="text/javascript" src="{{ asset('frontassets/js/particles.js') }}"></script>
<script src="{{ asset('frontassets/js/jquery.validate.js') }}" type="text/javascript"></script>
<script>
var site_url="<?= url('/'); ?>";
</script>
<script src="{{ asset('frontassets/js/main.js') }}" type="text/javascript"></script>
<script src="{{ asset('frontassets/js/jquery.geocomplete.js') }}" type="text/javascript"></script>
<script src="{{ asset('frontassets/js/jquery.mask.js') }}" type="text/javascript"></script>
<script src="https://checkout.stripe.com/checkout.js"></script>
<script src="https://d3gxy7nm8y4yjr.cloudfront.net/js/embed.js" type="text/javascript"></script>
<script src="https://www.paypalobjects.com/api/checkout.js"></script>

</head>
<body>
<div class="wrapper">
<section class="top_bar_inner">
<div id="loginpanel" class="container text-right">
@if(Auth::user())
@php $userdetails = Auth::user(); @endphp
<p>You are signed in as <a href="{{url('/profile')}}"><strong>{{$userdetails->f_name}}</strong></a> | <strong>
<a href="{{url('user/logout')}}">Logout</a></strong>
</p>
@else
<p><strong><a href="{{url('/register')}}">Register</a>&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp; </strong> <strong><a href="{{url('/login')}}">Login</a></strong>
@endif	
</p>
</div>
</section>
@yield('contents')
<footer>
<div class="container">
<div class="row">
<div class="col-md-7 col-sm-6 col-xs-12 footer_logo">
<a href="{{url('/')}}">
<img src="{{asset('frontassets/images/footer_logo.png')}}" class="img-responsive" alt="" />
</a>
</div>
<div class="col-md-2 col-sm-3 col-xs-12 site_link">
<h5>SITE LINKS</h5>
<ul>
<li><a href="{{url('/')}}">Home</a></li>
<li><a href="{{url('/privacypolicy')}}">Privacy Policy</a></li>
<li><a href="{{url('/terms')}}">Terms & Conditions</a></li>
<li><a href="{{url('/register')}}">Register</a></li>
</ul>
</div>
<div class="col-md-3 col-sm-3 col-xs-12 site_address">
<ul>
<li><a href="tel:+1000-123-4567">Phone: 000-123-4567</a></li>
<li><a href="javascript:void(0);">Fax: 000-123-4567</a></li>
<li>
<a href="javascript:void(0);">
<i class="fab fa-facebook-f"></i>
</a>
<a href="javascript:void(0);">
<i class="fab fa-twitter"></i>
</a>
<a href="javascript:void(0);">
<i class="fab fa-linkedin-in"></i>
</a>
<a href="javascript:void(0);">
<i class="fab fa-google-plus-g"></i>
</a>
</li>
</ul>
</div>
</div>
</div>
</footer>
<section class="copyrigt_sec">
<div class="container">
<p>&copy; 2018 <strong>OnlineSolar.</strong> All rights reserved.</p>
</div>
</section>
</body>
</html>	