@extends('front.layout.head')
@section('description')
Haggle Free Base Price Guaranteed
@endsection
@section('title')
Online Solar | Haggle Free Base Price Guaranteed
@endsection
@section('contents')
<style>
.error{
	color: #fd7e7e !important;
}
</style>
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
</div>
</section>
<section class="green_box_section">
<div class="container">
<div id="forgetmessages"></div>
<div id="showloading"></div>
<div id="loginpanel" class="row green_box_row show">
<div class="col-md-1 col-sm-1 col-xs-12"></div>
<div class="col-md-10 col-sm-10 col-xs-12 green_box">
@if (Session::has('errors'))
<!--<div class="bs-example">
<div class="alert alert-danger fade in">
<a href="#" class="close" data-dismiss="alert">&times;</a>
<strong>Error!</strong> Invalid Email Address/Password.
</div>
</div>-->
@endif	
<form name="userlogin" id="userlogin" method="post" action="{{url('user/login')}}" enctype="multipart/form-data">
{{csrf_field()}}
<div class="green_box_inner text-center">
<h2 class="text-center"><i class="fa fa-user"></i>  Login to your Account</h2>
<input type="text" name="useremail" id="useremail" placeholder="EMAIL ADDRESS" class="txt_box_theme" />
<input type="password" name="userpassword" id="userpassword" placeholder="PASSWORD" class="txt_box_theme" />
<p>
<span class="pull-left">
<input type="checkbox" name="remember" id="remember" value="1"> Remember me
</span>
<span class="pull-right for_got_span">
<Strong>
<a href="{{url('/register')}}">Register</a> | <a class="forget" href="#forgetpanel">Forgot Your Password?</a>
</Strong>
</span>
</p>
<input type="submit" name="submit" id="submit" value="LOGIN" class="btn_theme text-center" />
</div>
</form>
<script type="text/javascript">
jQuery("#userlogin").validate({
rules: {
	useremail: {
	required: true,
	email: true
	},
	userpassword: {required: true, minlength:6}
},
messages: {
	useremail: { required: "Enter your email", email:"Enter your correct email"},
	userpassword: { required: "Enter your password", minlength:"Minimum Lenght 6"}
}
});
</script>
</div>
<div class="col-md-1 col-sm-1 col-xs-12"></div>
</div>


<div id="forgetpanel" class="row green_box_row hide">
<form name="losspassForm" id="losspassForm" method="post" action="" enctype="multipart/form-data">
{{csrf_field()}}	
<div class="col-md-1 col-sm-1 col-xs-12"></div>
<div class="col-md-10 col-sm-10 col-xs-12 green_box forget_pass">
<div class="green_box_inner text-center">
<h2 class="text-center">Forgot your password</h2>
<p>Enter your email below and we will send you a new password</p>
<input type="text" name="email" id="email" placeholder="ENTER EMAIL ADDRESS" class="txt_box_theme" />
<input type="submit" name="submit" id="submit" value="SUBMIT" class="btn_theme text-center" />
</div>
</div>
<div class="col-md-1 col-sm-1 col-xs-12"></div>
</form>
<script type="text/javascript">
jQuery("#losspassForm").validate({
rules: {
	email: {
	required: true,
	email: true
	}
},
messages: {
	email: { required: "Enter your email", email:"Enter your correct email"}
},
submitHandler: function() {
usersendinpass();
},
success: function(label) {
	label.remove();
}
});
</script>
</div>


</div>
</section>
<div id="particles-js"></div>
</div>
@endsection