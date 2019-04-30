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
<h2 class="entry-title">Thank you!</h2>
</div>
</div>
</div>
</section>
<section class="green_box_section">
<div class="container">
<div class="row orange_box_row">
<div class="col-md-2 col-sm-2 col-xs-12"></div>
<div class="col-md-8 col-sm-8 col-xs-12 text-center orange_box">
<div class="orange_box_inner">
<h4><strong>THANK YOU FOR YOUR ORDER</strong></h4>
<p>
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 
</p>
</div>
</div>
<div class="col-md-2 col-sm-2 col-xs-12"></div>
</div>
<div class="row green_box_row">
<div class="col-md-2 col-sm-2 col-xs-12"></div>
<div class="col-md-8 col-sm-8 col-xs-12 green_box">
<div class="green_box_inner">
<h2 class="text-center">Filled out our survey form</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor adipisicing elit, sed do </p>
<form name="usersurvey" id="usersurvey" method="post" action="" enctype="multipart/form-data">
{{csrf_field()}}
<ul class="survey_ul">
<li>
<span>
<a href="javascript:void(0);">1</a>
<a href="javascript:void(0);">
2
</a>
<a href="javascript:void(0);">
3
</a>
<a href="javascript:void(0);">
4
</a>
<a href="javascript:void(0);">
5
</a>
</span>
</li>
<li>
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.
<span>
	<ul>
		<li>
			<input type="radio" name="optone" id="optone" value="1" checked="checked">
		    <label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optone" id="optone" value="2">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optone" id="optone" value="3">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optone" id="optone" value="4">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optone" id="optone" value="5">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
	</ul>
</span>
</li>
<li>
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.
<span>


	<ul>
		<li>
			<input type="radio" name="opttwo" id="opttwo" value="1" checked="checked">
		    <label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="opttwo" id="opttwo" value="2">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="opttwo" id="opttwo" value="3">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="opttwo" id="opttwo" value="4">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="opttwo" id="opttwo" value="5">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
	</ul>
</span>
</li>
<li>
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.
<span>

	<ul>
		<li>
			<input type="radio" name="optthree" id="optthree" value="1" checked="checked">
		    <label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optthree" id="optthree" value="2">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optthree" id="optthree" value="3">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optthree" id="optthree" value="4">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optthree" id="optthree" value="5">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
	</ul>
</span>
</li>
<li>
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.
<span>

	<ul>
		<li>
			<input type="radio" name="optfour" id="optfour" value="1" checked="checked">
		    <label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optfour" id="optfour" value="2">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optfour" id="optfour" value="3">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optfour" id="optfour" value="4">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optfour" id="optfour" value="5">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
	</ul>
</span>
</li>
<li>
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed.
<span>
	<ul>
		<li>
			<input type="radio" name="optfive" id="optfive" value="1" checked="checked">
		    <label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optfive" id="optfive" value="2">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optfive" id="optfive" value="3">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optfive" id="optfive" value="4">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
		<li>
			<input type="radio" name="optfive" id="optfive" value="5">
			<label for="f-option"></label>
		    <div class="check"></div>
		</li>
	</ul>
</span>
</li>
</ul>
<div class="row text-center">
<div class="col-md-12 col-sm-12">
<input type="submit" name="submit" id="submit" class="btn_theme" value="SUBMIT" />
</div>
</div>
</form>
<div id="sucesssurvey"></div>
</div>
</div>
<div class="col-md-2 col-sm-2 col-xs-12"></div>
</div>
</div>
</section>
<script type="text/javascript">
jQuery("#usersurvey").validate({
rules: {
	optfive: "required"
},
messages: {
	optfive:"Enter check"
},
submitHandler: function() {
usersurvey();
},
success: function(label) {
	label.remove();
}
});
</script>
@endsection