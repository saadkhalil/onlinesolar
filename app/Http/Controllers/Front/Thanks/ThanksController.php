<?php

namespace App\Http\Controllers\Front\Thanks;
use Auth;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class ThanksController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $thanks = 'thanks';
        return view('front.thanks.'.$thanks);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       $opt_one = $request->input("optone");
       $opt_two = $request->input("opttwo");
       $opt_three = $request->input("optthree");
       $opt_four = $request->input("optfour");
       $opt_five = $request->input("optfive");

        // Send survey email
                $message =  "Hello ,<br><br>You have user survey with OnlineSolar. <br><br> 1) Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed. ".$opt_one." <br><br> 2) Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed. ".$opt_two." <br><br> 3) Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed. ".$opt_three." <br><br> 4) Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed. ".$opt_four." <br><br> 5) Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed. ".$opt_five."<br><br> Thanks & Regards<br><br>OnlineSolar";
                $headers = "MIME-Version: 1.0" . "\r\n";
                $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
                $headers .= 'From: Online Solar<info@onlinesolar.com>' . "\r\n";
                $to = 'bcdeveloper3@gmail.com';
                $subject = "Online Solar Survey Form";
                $mail = mail($to,$subject,$message,$headers); 
                return 'sendsurvey';
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
