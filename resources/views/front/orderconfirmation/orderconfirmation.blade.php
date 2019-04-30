@extends('front.layout.head')
@section('description')
Haggle Free Base Price Guaranteed
@endsection
@section('title')
Online Solar | Haggle Free Base Price Guaranteed
@endsection
@section('contents')
{{csrf_field()}}
<section class="hero_inner_banner">
<div class="container text-center">
<div class="row">
<div class="col-md-12 logo_div">
<a href="{{url('/')}}"><img src="{{asset('frontassets/images/logo.png')}}" class="img-responsive" /></a>
</div>
</div>
<div class="row inner_banner_title">
<div class="col-md-12">
<h2 class="entry-title">ORDER CONFIRMATION</h2>
<h5 class="entry-sub-title"></h5>
</div>
</div>
</div>
</section>
<section id="orderconfirmationpanel" class="green_box_section show">
<div class="container">
<div class="row orange_box_row">
<div class="col-md-2 col-sm-2 col-xs-12"></div>
<div class="col-md-8 col-sm-8 col-xs-12 text-center orange_box">
<div class="orange_box_inner">
<h4><strong>YOUR ORDER CONFIRMATION CODE</strong></h4>
<h3 class="order_confirm_code">{{$userorder->order_id}}</h3>
<p>You can track your order with your order confirmation code.</p>
</div>
</div>
<div class="col-md-2 col-sm-2 col-xs-12"></div>
</div>
<div class="row on_time_offer_row">
<div class="col-md-2 col-sm-2 col-xs-12"></div>
<div class="col-md-8 col-sm-8 col-xs-12 one_time_offer">
<h2>One Time Offer<span> <i class="fa fa-stopwatch"></i> <span class="countdown">09:42M</span></span></h2>
</div>
<div class="col-md-2 col-sm-2 col-xs-12"></div>
</div>
<div class="row col_3_products">
@foreach($products as $product)
<div class="col-md-4 col-sm-4 col-xs-12 order_product_col">
<div class="order_product_col_inner">
<div class="order_pro_thumb">
<img src="{{url('/')}}/{{$product->image}}" class="img-responsive" alt="" />
</div>
<div class="order_pro_detail">
<ul>
<li><h4>{{$product->title}}<br /><small>{{$product->description}}</small></h4>
<h3>@php echo '$'.$product->price; @endphp</h3>
</li>
<li>
<h5>Size: 
@php 
$sizes = explode(";",$product->sizes); 
$totalsize = count($sizes);
@endphp
<select name="size{{$product->id}}" id="size{{$product->id}}">
@php for($i=0;$i<$totalsize;$i++){ @endphp
<option value="@php echo $sizes[$i]; @endphp">@php echo $sizes[$i]; @endphp</option>
@php } @endphp
</select>
</h5>
</li>
<li>
<h5>
Color: 
@php 
$colors = explode(";",$product->colors); 
$totalcolors = count($colors);
@endphp
<select name="color{{$product->id}}" id="color{{$product->id}}">
@php for($j=0;$j<$totalcolors;$j++){ @endphp
<option value="@php echo $colors[$j]; @endphp">@php echo $colors[$j]; @endphp</option>
@php } @endphp
</select>
</h5>
</li>
<li><a id="{{$product->id}}" href="javascript:void(0);" class="btn_theme onetimeoffer" amount="{{$product->price}}" title="{{$product->title}}">ADD TO CART</a></li>
</ul>
</div>
</div>
</div>
@endforeach
</div>
<div class="row btn_bottom_sec">
<div class="col-md-12 col-xs-12 text-center">
<a href="{{url('/thanks')}}" class="btn_extra_long">
No, I don't want to save money on this amazing offer, but I still got the best deal on solar!
</a>
</div>
</div>
</div>
</section>
<section id="otocartpanel" class="cart_box_selection hide">
<div class="container">
<div class="row cart_box_row">
<div class="col-md-2 col-sm-2 col-xs-12"></div>
<div class="col-md-8 col-sm-8 col-xs-12 cart_box oto_cart_box">
<div class="cart_box_inner">
<h2 class="text-center"><i class="fa fa-shopping-cart"></i> Your Cart</h2>
<h5 class="text-center">1 ITEM</h5>
<ul class="cart_item_ul">
<li><a href="#" class="product_cart_title">Power System 02</a>
<a href="#" class="cart_product_delete"><i class="fa fa-trash"></i></a>
<a href="#" class="cart_product_price">$99.99</a>
</li>
<li><a href="#" class="product_cart_title">Power System 02</a>
<a href="#" class="cart_product_delete"><i class="fa fa-trash"></i></a>
<a href="#" class="cart_product_price">$99.99</a>
</li>
<li class="oto_cart_total">TOTAL <span>$198.99</span></li>
</ul>
</div>
</div>
<div class="col-md-2 col-sm-2 col-xs-12"></div>
</div>
<div class="row go_back_btn_row">
<div class="col-md-6 col-sm-6 col-xs-6 text-right">
<a href="javascript:void(0);" class="btn_theme backotopanel">GO BACK</a>
</div>
<div class="col-md-6 col-sm-6 col-xs-6 text-left">
<a href="javascript:void(0);" class="btn_theme paynows">PAY NOW</a>
</div>
</div>
</div>
</section>

<section id="paymentpanel" class="cart_box_selection hide">
<div class="container">
<div class="row cart_box_row">
<div class="col-md-2 col-sm-2 col-xs-12"></div>
<div class="row cart_payment_box_row">
<div class="col-sm-2 col-xs-12"></div>
<div class="col-sm-8 col-xs-12 cart_payment_box order_confirmation_pg">
<div class="cart_payment_box_inner">
<h2 class="text-center"><i class="fa fa-credit-card"></i>Payment Method</h2>
<div class="row btn_payment_row">
 
<div class="col-md-6 col-xs-12">
<form action="{{url('/stripe/charge.php')}}" method="POST">
<input type='hidden' name='stripamount' id="stripamount" value=''>
<script
src="https://checkout.stripe.com/checkout.js" class="stripe-button"
data-key="pk_test_L59T4T2utlwOMMVqxVGYnsRK"
data-amount=""
data-name="Online Solar"
data-description="Solar Panel"
data-image="{{url('/frontassets/images/footer_logo.png')}}"
data-locale="auto"
data-zip-code="true">
</script>
</form>
</div>

<div class="col-md-6 col-xs-12 btn_pop_paypal">
	<div id="paypal-button-container"></div> 
	<input type='hidden' name='amount' id="amount" value='@php echo $checkoutprice; @endphp'> 
	<!-- <form name="paypalForm" id="paypalForm" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
	<input type='hidden' name='business' value='FrankJWashington@rhyta.com'>
	<input type='hidden' name='cmd' value='_xclick'>
	<input type='hidden' name='tx' value='4U3114973X461690U'>
	<input type='hidden' name='at' value='FEXgQtbIyylwRtbKwc3R0HVyyFM4OzNBEvviqqyE5a5lDwI4DJPiHDM81Qa'>
	<input type='hidden' name='item_name' value='Online Solar'>
	<input type='hidden' name='amount' id="amount" value='@php echo $checkoutprice; @endphp'>
	<input type='hidden' name='currency_code' value='USD'>
	<input type='hidden' name='handling' value='0'>
	<input type='hidden' name='cancel_return' value='{{url("/")}}'> 
	<input type='hidden' name='return' id="return_paypal" value='{{url("/ordersave")}}/1/paypal'>
	<div class="col-md-6 col-xs-12">
	<input type="submit" name="submit" id="submit" value="PAY VIA PAYPAL" class="btn_sky_cart" />
	</div>
	</form> -->
</div>


</div>
</div>
</div>
<div class="col-sm-2 col-xs-12"></div>
<div class="row go_back_btn_row">
<div class="col-md-12 text-center">
<a href="javascript:void(0);" class="btn_theme backpaymentsoto">GO BACK</a>
</div>
</div>
</div>
</div>
</div>
</section>
<div id="showloading"></div>
<script type="text/javascript">
var timer2 = "10:01";
var interval = setInterval(function() {


  var timer = timer2.split(':');
  //by parsing integer, I avoid all extra string processing
  var minutes = parseInt(timer[0], 10);
  var seconds = parseInt(timer[1], 10);
  --seconds;
  minutes = (seconds < 0) ? --minutes : minutes;
  seconds = (seconds < 0) ? 59 : seconds;
  seconds = (seconds < 10) ? '0' + seconds : seconds;
  //minutes = (minutes < 10) ?  minutes : minutes;
  $('.countdown').html(minutes + ':' + seconds);
  if (minutes < 0) clearInterval(interval);
  //check if both minutes and seconds are 0
  if ((seconds <= 0) && (minutes <= 0)) clearInterval(interval);
  timer2 = minutes + ':' + seconds;
}, 1000);	
</script>
@endsection