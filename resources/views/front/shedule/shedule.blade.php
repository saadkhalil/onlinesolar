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
<h2 class="entry-title">Schedule Your Site Visit</h2>
<h5 class="entry-sub-title">Pick a date from the calendar below to schedule a visit</h5>
</div>
</div>
</div>
</section>
<section class="green_box_section">
<div class="container">

<div id="scheduledate" class="row green_box_row show">
<div class="col-md-2 col-sm-2 col-xs-12"></div>
<div class="col-md-8 col-sm-8 col-xs-12 green_box">
<div class="green_box_inner">
<h2 class="text-center"><i class="fa fa-calendar-alt"></i> Pick a date</h2>
<iframe src="https://app.acuityscheduling.com/schedule.php?owner=16627636" width="100%" height="800" frameBorder="0"></iframe>
<div class="row text-center">
<div class="col-md-12 col-sm-12 col-xs-12">
<input type="button" class="btn_theme" value="PROCEED" onclick="setSheduleDate();" />
</div>
</div>
</div>
</div>
<div class="col-md-2 col-sm-2 col-xs-12"></div>
</div>


<div id="utilitybill" class="row green_box_row hide">
<div class="col-md-2 col-sm-2 col-xs-12"></div>
<div class="col-md-8 col-sm-8 col-xs-12 green_box upload_file_box">
<div class="green_box_inner">
<h2 class="text-center"><i class="fa fa-upload"></i> Upload utility bill</h2>
<p>Don't have your utility bill on hand?
<br />Don't worry, we can collect this info on your site visit</p>
<form name="userutilitybillForm" id="userutilitybillForm" method="post" action="" enctype="multipart/form-data">
{{csrf_field()}}
<div class="row text-center brows_files_row">
<div class="col-xs-12 no-padding">
<input type="hidden" name="ordernum" id="ordernum" value="{{$userorder->order_id}}">

<div class="file-upload">
  <div class="file-select">
    <div class="file-select-name" id="noFile">Select file to upload</div>
    <div class="file-select-button" id="fileName">Browse</div>
    <input type="file" name="billupload" id="billupload">
  </div>
</div>


<!-- <div class="input-group">
    <input type="file" class="custom-file-input" id="billupload" name="billupload" id="billupload" placeholder="Choose File" required>
    <label class="custom-file-label" for="billupload">Select a file to upload</label>
</div> -->
<!-- <input type="file" name="billupload" id="billupload" class="btn_theme" placeholder="SELECT FILE TO UPLOAD" style="opacity: 1;" /> -->
<div id="fileerror"></div>
</div>
</div>
<div class="row text-center">
<div class="col-md-12 col-sm-12">
<input type="submit" value="UPLOAD" class="btn_theme" />
</div>
</div>
</form>
</div>
</div>
<div class="col-md-2 col-sm-2 col-xs-12"></div>
</div>
<div id="showloading"></div>
</div>
<script type="text/javascript">
jQuery("#userutilitybillForm").validate({
rules: {
	ordernum: "required",
	billupload: "required"
},
messages: {
	ordernum: "You have no order place to set the scheduledate",
	billupload: "Upload Utility Bill"
}
,
submitHandler: function() {
userbillupload();
},
success: function(label) {
	label.remove();
}
});	
</script>

<script type="text/javascript">
	$('#billupload').bind('change', function () {
  var filename = $("#billupload").val();
  if (/^\s*$/.test(filename)) {
    $(".file-upload").removeClass('active');
    $("#noFile").text("No file chosen..."); 
  }
  else {
    $(".file-upload").addClass('active');
    $("#noFile").text(filename.replace("C:\\fakepath\\", "")); 
  }
});
</script>
</section>
@endsection