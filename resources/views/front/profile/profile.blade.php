@extends('front.layout.head')
@section('description')
Haggle Free Base Price Guaranteed
@endsection
@section('title')
Online Solar | Haggle Free Base Price Guaranteed
@endsection
@section('contents')
<section class="hero_inner_banner">
<div class="container text-center">
<div class="row">
<div class="col-md-12 logo_div">
<a href="{{url('/')}}"><img src="{{asset('frontassets/images/logo.png')}}" class="img-responsive" /></a>
</div>
</div>
<div class="row inner_banner_title">
<div class="col-md-12">
<h2 class="entry-title">Welcome, {{$user_info->f_name}} {{$user_info->l_name}}</h2>
<h5 class="entry-sub-title">Edit your profile information below</h5>
</div>
</div>
</div>
</section>
<section class="green_box_section">
<div class="container">
<div id="profilemsg"></div>
<div id="userinfopanel" class="row green_box_row show">
<form name="userinforform" id="userinforform" method="post" action="" enctype="multipart/form-data">
{{csrf_field()}}	
<div class="col-md-1 col-sm-1 col-xs-12"></div>
<div class="col-md-10 col-sm-10 col-xs-12 green_box">
<div class="green_box_inner">
<h2 class="text-center">Personal Information</h2>
<p>Update your personal information below</p>
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12">
<input type="text" name="fname" id="fname" placeholder="FIRST NAME" class="txt_box_theme" value="{{$user_info->f_name}}" />
</div>
<div class="col-md-6 col-sm-6 col-xs-12">
<input type="text" name="lname" id="lname" placeholder="LAST NAME" class="txt_box_theme" value="{{$user_info->l_name}}" />
</div>
<div class="col-md-12 col-sm-12 col-xs-12">
<input type="text" name="address" id="address" placeholder="ADDRESS" class="txt_box_theme" value="{{$user_info->address}}" />
</div>
<div class="col-md-12 col-sm-12 col-xs-12">
<input type="tel" name="phone" id="phone" placeholder="PHONE NUMBER" class="txt_box_theme phone_us" value="{{$user_info->phone}}" />
</div>
</div>
</div>
</div>
<div class="col-md-1 col-sm-1 col-xs-12"></div>
<div class="row go_back_btn_row">
<div class="col-md-12 text-center">
<input type="submit" value="UPDATE INFO" class="btn_theme">
</div>
</div>
</form>
<script type="text/javascript">
jQuery("#userinforform").validate({
rules: {
	fname: "required",
	lname: "required",
	address: "required",
	phone: "required"
},
messages: {
	fname:"Enter first name",
	lname:"Enter last name",
	address: "Enter address",
	phone: "Enter phone number"
},
submitHandler: function() {
updateinfo();
},
success: function(label) {
	label.remove();
}
});
</script>
</div>
<div id="passchange" class="row orange_box_row hide">
<form name="userupdatepass" id="userupdatepass" method="post" action="" enctype="multipart/form-data">
{{csrf_field()}}	
<div class="col-md-1 col-sm-1 col-xs-12"></div>
<div class="col-md-10 col-sm-10 col-xs-12 text-center orange_box">
<div class="orange_box_inner">
<h2>Change Password</h2>
<p>Update your password below</p>
<div class="row">
<div class="col-md-12">
<input type="hidden" name="hidepass" id="hidepass" class="txt_box_theme" value="{{$user_info->text_pass}}" />	
<input type="password" name="oldpass" id="oldpass" placeholder="ENTER OLD PASSWORD" class="txt_box_theme" />
<input type="password" name="newpass" id="newpass" placeholder="ENTER NEW PASSWORD" class="txt_box_theme" />
</div>
</div>
</div>
</div>
<div class="col-md-1 col-sm-1 col-xs-12"></div>
<div class="row go_back_btn_row">
<div class="col-md-12 text-center">
<input type="submit" name="submit" id="submit" value="UPDATE PASS" class="btn_theme">
</div>
</div>
</form>
<script type="text/javascript">
jQuery("#userupdatepass").validate({
rules: {
	oldpass: "required",
	newpass: "required"
},
messages: {
	oldpass:"Enter old password",
	newpass:"Enter new password"
},
submitHandler: function() {
updateuserpassword();
},
success: function(label) {
	label.remove();
}
});
</script>
</div>
<div id="showloading"></div>
</div>
</section>
@endsection