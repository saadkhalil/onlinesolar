<?php

namespace App\Http\Controllers\Front\Register;
use Auth;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use DB;

class RegisterController extends Controller
{
	
    public function index()
    {
		$cchk='reg_div';
        if($user = Auth::user())
        {
			$email = Auth::user()->email;
			if (User::where('email', '=', $email)->where('status', '=', 0)->count() > 0) {
			
				$get_user = \App\User::where('email',$email)->first();
				$user_details = json_decode($get_user);
				$this->sms_code($user_details->phone,$user_details->confirm_code);
				$cchk='code_div';
			}
			else{
				$cchk='addr_div';
			}
        }
		$register = 'register';
		$system_settings = DB::table('settings')->first();
        return view('front.register.'.$register)->with('cchk',$cchk)->with('system_settings',$system_settings);
    }
	
    public function confirmationcode(Request $request){
        if (User::where('confirm_code', '=', $request->input("confirm_code"))->where('status', '=', 0)->count() > 0) {
			
            $update_user = \App\User::where('confirm_code',$request->input("confirm_code"))->first();
            $user_details = json_decode($update_user);
            $update_user->status=1;
            $update_user->save();
			
			// $message =  "Hello ,<br><br>You have successfully registered with OnlineSolar. Please Login with given credentials.<br><br> User Email: ".$user_details->email."<br><br> Pass: ".$userpass."<br><br> Thanks & Regards<br><br>OnlineSolar";
			// $headers = "MIME-Version: 1.0" . "\r\n";
			// $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
			// $headers .= 'From: Online Solar<info@onlinesolar.com>' . "\r\n";
			// $to = $user_details->email;
			// $subject = "Online Solar Account Activate";
			// $mail = mail($to,$subject,$message,$headers);
			if($user = Auth::user()){
				return array('title' => 'codeexist','username' => $user_details->email);
			}
			else{
				return array('title' => 'codeexist','username' => $user_details->email,'pass' => $userpass );
			}
        }else{
            return array('title' => 'codenotexist');
        }
    }
	
    public function store(Request $request){
        if (User::where('email', '=', $request->input("email"))->count() > 0) {
           return 'emailexist';
        }else if (User::where('phone', '=', $request->input("phone"))->count() > 0) {
           return 'phonexist';
        }else{    
            $user = new User();
            $user->f_name=$request->input("fname");
            $user->l_name=$request->input("lname");
            $user->email=$request->input("email");
            $user->phone=$request->input("phone");
            $user->status=0;
            $user->created_at=date("Y-m-d H:i:s");
            $user->updated_at=date("Y-m-d H:i:s");
			
            $alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
            $pass = array();
            $alphaLength = strlen($alphabet) - 1;
            for ($i = 0; $i < 8; $i++) {
                $n = rand(0, $alphaLength);
                $pass[] = $alphabet[$n];
            }
            $userpass = implode($pass);
            $user->password=bcrypt($userpass);
            $user->text_pass=$userpass;
			
            $user->save();
			
            $userId = $user->id;
            $rand = rand(1000,9999);
            $confirmation_code = 'SLP'.$userId.$rand;
            $update_user = \App\User::where('id',$userId)->first();
            $update_user->confirm_code=$confirmation_code;
            $update_user->save();

            // Send register email
                // $message =  "Hello ,<br><br>You have successfully registered with OnlineSolar. Please Enter below code and activate your account.<br><br> Confirmation Code: ".$confirmation_code."<br><br>Thanks & Regards<br><br>OnlineSolar";
			$message =  "Hello ,<br><br>You have successfully registered with OnlineSolar. Please Login with given credentials.<br><br> User Email: ".$request->input("email")."<br><br> Pass: ".$userpass."<br><br> Thanks & Regards<br><br>OnlineSolar";
			$headers = "MIME-Version: 1.0" . "\r\n";
			$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
			$headers .= 'From: Online Solar<info@onlinesolar.com>' . "\r\n";
			$to = $request->input("email");
			$subject = "Online Solar Registration";
			$mail = mail($to,$subject,$message,$headers);
				
			unset($_COOKIE['register_email']);
			$cookie_name = "register_email";
			$cookie_value = $request->input("email");
			setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/");
            $this->sms_code($request->input("phone"),$confirmation_code);
            return 'doneregistration';
        }   
    }

	public function sms_code($phone,$confirmation_code){
			$remove_brcket_one = str_replace('(', '', $phone);
            $remove_brcket_two = str_replace(')', '', $remove_brcket_one);
            $remove_dash = str_replace('-', '', $remove_brcket_two);
            $send_code = str_replace(' ', '', $remove_dash);
            
            $id = "AC7a7238313e2396fda7ffa9d2dce72a21";
            $token = "bc791f1cea657891f84fa526659d53e3";
            $url = "https://api.twilio.com/2010-04-01/Accounts/$id/SMS/Messages";
            $from = "+19162998830";
            $to = "+1".$send_code;
            $body = "Activate your account ".$confirmation_code;
            $data = array (
                'From' => $from,
                'To' => $to,
                'Body' => $body,
            );
            $post = http_build_query($data);
            $x = curl_init($url );
            curl_setopt($x, CURLOPT_POST, true);
            curl_setopt($x, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($x, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($x, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
            curl_setopt($x, CURLOPT_USERPWD, "$id:$token");
            curl_setopt($x, CURLOPT_POSTFIELDS, $post);
            $y = curl_exec($x);
            curl_close($x);
	}
    
	public function resendconfirmationcode(Request $request){
		if (User::where('email', '=', $request->input("register_email"))->count() > 0) {            
            $update_user = \App\User::where('email',$request->input("register_email"))->first();
            $user_details = json_decode($update_user);

			// Send confirmation code again email
			// $message =  "Hello ,<br><br>You have successfully registered with OnlineSolar. Please Enter below code and activate your account.<br><br> Confirmation Code: ".$user_details->confirm_code."<br><br>Thanks & Regards<br><br>OnlineSolar";
			// $headers = "MIME-Version: 1.0" . "\r\n";
			// $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
			// $headers .= 'From: Online Solar<info@onlinesolar.com>' . "\r\n";
			// $to = $user_details->email;
			// $subject = "Online Solar Registration";
			// $mail = mail($to,$subject,$message,$headers);
			
			$this->sms_code($user_details->phone,$user_details->confirm_code);
            return 'coderesend';
        }else{
            return 'codenotsend';
        }
    }
	
    public function addressconfirmation(Request $request){
        return 'addressconfirm';
    }
	
    public function saveaddress(Request $request){
        $user = Auth::user();
        $userId = $user->id;
        $update_user = \App\User::where('id',$userId)->first();
        $update_user->address=$request->input("geocomplete");
        $update_user->save();
        return 'addressdone';
    }
	
    public function destroy($id)
    {
        //
    }
}
