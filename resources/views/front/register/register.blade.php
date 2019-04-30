@extends('front.layout.head')
@section('description')
Haggle Free Base Price Guaranteed
@endsection
@section('title')
Online Solar | Haggle Free Base Price Guaranteed
@endsection
@section('contents')
<div class="particle_js_inner">
<section class="hero_inner_banner">
<div class="container text-center">
<div class="row">
<div class="col-md-12 logo_div">
<a href="{{url('/')}}">
<img src="{{asset('frontassets/images/logo.png')}}" class="img-responsive" />
</a>
</div>
</div>
<div class="row inner_banner_title">
<div class="col-md-12">
<h2 class="entry-title">ACCOUNT REGISTRATION</h2>
<h5 class="entry-sub-title">Fill in the form to register your account</h5>
</div>
</div>
<div id="timer" class="row inner_banner_title_timer hide">
<div class="col-sm-2 col-xs-12"></div>
<div class="col-sm-8 col-xs-12">
<div class="row">
<div class="col-md-8">
<h3>
One Time Offer <br />
<small>Pay now before the timer expires and get exclusive discount</small>
</h3>
</div>
<div class="col-md-4">
<h2>
<i class="fa fa-stopwatch"></i> <span class="countdown"></span>
</h2>
</div>
</div>
</div>
<div class="col-sm-2 col-xs-12"></div>
</div>
</div>
</section>
<section class="inner-content-section">
<div class="container text-center">
<div id="sucessregister"></div>
<div id="register" class="row form_row {{($cchk == 'reg_div' ? 'show' : 'hide')}}">
<div class="col-md-12 form_box">
<form name="userregister" id="userregister" method="post" action="" enctype="multipart/form-data">
{{csrf_field()}}
<div class="form_box_inner">
<div class="col-md-12 form_box_title">
<h2><i class="fa fa-user"></i>  Personal Information</h2>
</div>
<div class="col-md-6">
<input type="text" class="txt_text_box" placeholder="FIRST NAME" name="fname" id="fname" />
</div>
<div class="col-md-6">
<input type="text" class="txt_text_box" placeholder="LAST NAME" name="lname" id="lname" />
</div>
<div class="col-md-12">
<input type="text" class="txt_text_box" placeholder="EMAIL ADDRESS" name="email" id="email" />
<div id="emailerror"></div>
</div>
<div class="col-md-12">
<input type="text" class="txt_text_box phone_us" placeholder="PHONE NUMBER" name="phone" id="phone" />
<div id="phoneerror"></div>
</div>
<div class="col-md-12 btn_submit_form_col">
<input type="submit" name="submit" id="submit" value="CREATE ACCOUNT" class="btn_submit_form" />
</div>
</div>
</form>
<script type="text/javascript">
jQuery("#userregister").validate({
rules: {
	fname: "required",
	lname: "required",
	email: {
	required: true,
	email: true
	},
	phone: "required"
},
messages: {
	fname:"Enter first name",
	lname:"Enter last name",
	email: { required: "Enter your email", email:"Enter your correct email"},
	phone: "Enter phone number"
},
submitHandler: function() {
userregister();
},
success: function(label) {
	label.remove();
}
});
</script>
</div>
</div>
<div id="confirmationcode" class="row form_row {{($cchk == 'code_div' ? 'show' : 'hide')}}">
<div class="col-md-12 form_box">
<form name="userconfirmcode" id="userconfirmcode" method="post" action="" enctype="multipart/form-data">
{{csrf_field()}}
<div class="form_box_inner">	
<div class="col-md-12 form_box_title">
<h2><i class="fa fa-user-check"></i>  Verification Code</h2>
<p>A code has been sent to your device via SMS. You may request another code after one minute.	</p>
</div>
<div class="col-md-12">
<input type="text" class="txt_text_box" placeholder="ENTER CODE" name="confirm_code" id="confirm_code" />
<div id="codeerror"></div>
</div>
<div class="col-sm-6 col-xs-12 btn_submit_form_col">
<input type="button" value="RESEND CODE" class="btn_submit_form" onclick="resendconfirmcode();" />
</div>
<div class="col-sm-6 col-xs-12 btn_submit_form_col">
<input type="submit" name="submit" id="submit" value="SUBMIT CODE" class="btn_submit_form" />
</div>
</div>
</form>
<script type="text/javascript">
jQuery("#userconfirmcode").validate({
rules: {
	confirm_code: "required"
},
messages: {
	confirm_code:"Enter confirmation code"
},
submitHandler: function() {
userconfirmationcode();
},
success: function(label) {
	label.remove();
}
});
</script>
</div>
</div>
<div class="container text-center" >
<div id="useraddress" class="row form_row {{($cchk == 'addr_div' ? 'show' : 'hide')}}">
<form name="userconfirmaddress" id="userconfirmaddress" method="post" action="" enctype="multipart/form-data">
{{csrf_field()}}	
<div class="col-md-12 form_box">
<div class="form_box_inner">
<div class="col-md-12 form_box_title">
<h2><i class="fa fa-pencil-alt"></i>  Fill in your address</h2>
</div>
<div class="col-md-12">
<input type="text" name="geocomplete" id="geocomplete" class="txt_text_box" placeholder="ADDRESS LINE 1"/>
<input name="formatted_address" id="formatted_address" type="hidden" value="">
<div class="col-md-12 map_canvas"></div>
</div>
<div class="col-xs-12 btn_submit_form_col">
<input type="submit" id="submit" name="submit" value="Confirm Location" class="btn_submit_form" />
</div>
</div>
</div>
</form>
<script type="text/javascript">
	jQuery("#userconfirmaddress").validate({
	rules: {
		geocomplete: "required"
	},
	messages: {
		geocomplete:"Enter address"
	},
	submitHandler: function() {
	addressconfirm();
	},
	success: function(label) {
		label.remove();
	}
	});
</script>
</div>

<!-- <div id="usermap" class="row form_row hide">
	<div class="col-md-12 form_box">
		<div class="form_box_inner">
			<div class="col-md-12 form_box_title">
				<h2><i class="fa fa-map-marker-alt"></i>  Confirm your location</h2>
				<p>If the map pin does not show you address correctly, <br />
			Confirm your location by marking it on the map below. </p>
			</div>
			
			<div class="col-sm-6 col-xs-12 btn_submit_form_col">
				<input type="button" value="GO BACK" class="btn_submit_form" onclick="backtoaddress();" />
			</div>
			<div class="col-sm-6 col-xs-12 btn_submit_form_col">
				<input type="button" value="PROCEED" class="btn_submit_form" onclick="saveaddress();" />
			</div>
		</div>
	</div>
</div> -->
</div>
<div id="systemselection" class="container hide">
	<div class="row system_selection_box_row">
		<div class="col-sm-2 col-xs-12"></div>
		<div class="col-sm-8 col-xs-12 system_selection_box ">
			<div class="system_selection_box_inner">
				<div class="system_sel_thumb">
					<img src="{{asset('frontassets/images/system-select-thumb.jpg')}}" class="img-responsive" alt="" />
				</div>
				<div class="system_sel_body">
					<div class="system_sel_body_head">
						<h3>POWER SYSTEM SELECTION <br />
						<small>Select the values below to get a price quote.</small>
						</h3>
						<h2 id="totlprc"><small>ESTD. PRICE</small> <br />$0.00</h2>
					</div>
					<div class="system_sel_body_inner">
						<div class="row">
							<div class="col-sm-5">
								<p><strong>Average Electricity Bill</strong></p>
							</div>
							<div class="col-sm-5">
								<input type="range" min="{{$system_settings->slider_min_value}}" max="{{$system_settings->slider_max_value}}" value="0" class="slider system_rang_slider" id="elec_bill" step="{{$system_settings->slider_increments}}">
							</div>
							<div class="col-sm-2">
								<h5>$<span id="elec_bill_val">0.00</span></h5>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5">
								<p><strong>Estimated System Size</strong></p>
							</div>
							<div class="col-sm-5">
								<input type="range" min="1906" max="50000" value="0" class="slider system_rang_slider" id="sys_size">
							</div>
							<div class="col-sm-2">
								<h5><span id="sys_size_val">0</span> Watts</h5>
							</div>
						</div>
						<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-6">
						<p><strong>Purchase Option</strong></p>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-6 text-right">
						<select name="purchase_opt" id="purchase_opt" onchange="userpurchase_options(this.value);">
						<option value="cash">Cash</option>
						<option value="finance">Finance</option>
						</select>
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-2 col-xs-12"></div>
	</div>
	<div id="estimatepanel" class="row system_estimate_box_row">
		<div class="col-sm-2 col-xs-12"></div>
		<div class="col-sm-8 col-xs-12 system_estimate_box">
			<div class="system_estimate_box_inner">
				<ul>
					<li>Estimated System Production<span id="kwatt">0 kWh</span></li>
					<li>Estimated Savings over 25 Years<span id="numyrs">$ 0</span></li>
					<li id="sppr">System Price post rebates / Incentives<span id="incent">$ 0</span></li>
					<li>Estimated Tax Credit<span id="tax">$ 0</span></li>
					<li>System Size kW(DC)<span id="size">0</span></li>
					<li>Solar Panel Make<span id="make">{{$system_settings->panel_make}}</span></li>
					<li>Solar Panel Model<span id="model">{{$system_settings->panel_model}}</span></li>
					<li>Number of Solar Panels<span id="panel">0</span></li>
					<li>Inverter Make<span id="invert">{{$system_settings->inverter_make}}</span></li>
					<li>Number of Inverters<span id="numinvert">{{$system_settings->no_of_inverters}}</span></li>
				</ul>
			</div>
			<div id="addtocartpanel" class="row go_back_btn_row">
				<div class="col-sm-6 col-xs-12 text-right">
					<a href="javascript:void(0);" class="btn_theme gobackaddress">GO BACK</a>
				</div>
				<div class="col-sm-6 col-xs-12 text-left">
					<input type="hidden" name="electric_bill" id="electric_bill">
					<input type="hidden" name="electric_kwatt" id="electric_kwatt">
					<input type="hidden" name="estyrs" id="estyrs" value="25">
					<input type="hidden" name="incentives" id="incentives" value="1">
					<input type="hidden" name="oldincentives" id="oldincentives" value="1">
					<input type="hidden" name="taxes" id="taxes" value="1">	
					<input type="hidden" name="systemsize" id="systemsize" value="1">
					<input type="hidden" name="panelmake" id="panelmake" value="{{$system_settings->panel_make}}">
					<input type="hidden" name="panelmodel" id="panelmodel" value="{{$system_settings->panel_model}}">
					<input type="hidden" name="numberpanel" id="numberpanel" value="5">
					<input type="hidden" name="inverter" id="inverter" value="{{$system_settings->inverter_make}}">
					<input type="hidden" name="numberinverter" id="numberinverter" value="{{$system_settings->no_of_inverters}}">
					<a href="javascript:void(0);" class="btn_theme addcart">ADD TO CART</a>
				</div>
			</div>
		</div>
		<div class="col-sm-2 col-xs-12"></div>
	</div>
</div>

<div class="container">
<div id="cartpanel" class="row cart_box_row hide">
<?php $acccart=Session::get('cartproduct');	?>
@if(Session::has('cartproduct'))	
	<div class="col-sm-2 col-xs-12"></div>
	<div class="col-sm-8 col-xs-12 cart_box">
		<div id="cartsItem" class="cart_box_inner">
			<h2 class="text-center"><i class="fa fa-shopping-cart"></i> Your Cart</h2>
			<h5 class="text-center">{{count($acccart->items)}} ITEM</h5>
			<ul class="cart_item_ul">
				@foreach ($acccart->items as $key => $value)	
				@php 
				$total[] = $value['electricbill']; 
				@endphp
				<li><a href="javascript:void(0);" class="product_cart_title">{{$value['panelmake']}}</a><a id="{{$key}}" href="javascript:void(0);" class="cart_product_delete">
				<i class="fa fa-trash"></i></a><a href="javascript:void(0);" class="cart_product_price">@php echo '$'.$value['electricbill']; @endphp</a></li>
				@endforeach
			</ul>
			@if(isset($total))
			<ul class="cart_subtotal_ul">
				$subtotal = array_sum($total);
				$disscount = array_sum($total)/2;
				$checkoutprice = $subtotal - $disscount;
				<li>SUBTOTAL: <span>@php echo '$'.$subtotal; @endphp</span></li>
				<li class="dash_before">DISCOUNT: <span>@php echo '$'.$disscount; @endphp</span></li>
				<li class="total_cart">TOTAL: <span>@php echo '$'.$checkoutprice; @endphp</span></li>
			</ul>
			@endif
		<div class="row go_back_btn_row">
			<div class="col-sm-6 col-xs-12 text-right">
				<a href="javascript:void(0);" class="btn_theme gobackcartpanel">GO BACK</a>
			</div>
			<div class="col-sm-6 col-xs-12 text-right">
				<a href="javascript:void(0);" class="btn_theme paymentsmethods">Proceed to Checkout</a>
			</div>
		</div>
		</div>
		
	</div>
@endif
</div>
<div id="paymentpayment" class="row cart_payment_box_row hide">
	<div class="col-sm-2 col-xs-12"></div>
	<div class="col-sm-8 col-xs-12 cart_payment_box">
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
					<input type='hidden' name='amount' id="amount" value=''>
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
			<a href="javascript:void(0);" class="btn_theme gobackpayments">GO BACK</a>
		</div>
	</div>
</div>
</div>
<div id="showloading"></div>
</div>
</section>
<div id="particles-js"></div>
</div>
<script type="text/javascript">
// $( document ).ready(function() {	
// setInterval(function(){ setaddress(); }, 1000);	
// });
</script>
@endsection