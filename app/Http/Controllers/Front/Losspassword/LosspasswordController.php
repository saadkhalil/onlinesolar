<?php

namespace App\Http\Controllers\Front\Losspassword;
use Auth;
use DB;
use Mail;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class LosspasswordController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // return
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function submitchangepassword(Request $request)
    {
		  if (User::where('email', '=', $request->input("email"))->count() > 0) {
		    
            $alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
            $pass = array();
            $alphaLength = strlen($alphabet) - 1;
            for ($i = 0; $i < 8; $i++) {
                $n = rand(0, $alphaLength);
                $pass[] = $alphabet[$n];
            }
            $userpass = implode($pass);

            $update_user = \App\User::where('email',$request->input("email"))->first();
            $user_details = json_decode($update_user);
            $update_user->password=bcrypt($userpass);
            $update_user->save();
            // Send newpassword email
                $message =  "Hello ,<br><br>You have new login credentials with OnlineSolar. Please Login with given credentials.<br><br> User Email: ".$user_details->email."<br><br> Pass: ".$userpass."<br><br> Thanks & Regards<br><br>OnlineSolar";
                $headers = "MIME-Version: 1.0" . "\r\n";
                $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
                $headers .= 'From: Online Solar<info@onlinesolar.com>' . "\r\n";
                $to = $user_details->email;
                $subject = "Online Solar Forget Password";
                $mail = mail($to,$subject,$message,$headers);
            return 'passwordsend';

		  }
		  else {
			  
			  return 'passwordnotmatch';
		  }
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
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
