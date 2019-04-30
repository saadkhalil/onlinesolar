<?php

namespace App\Http\Controllers\Front\Profile;
use Auth;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if($user = Auth::user())
        {
        $profile = 'profile';
        $user_info = \App\User::where('id',$user->id)->first();
        return view('front.profile.'.$profile)->with('user_info',$user_info);
        }else{
            return redirect('/');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $fname = $request->input("fname");
        $lname = $request->input("lname");
        $address = $request->input("address");
        $phone = $request->input("phone");
        $user = Auth::user();
        $update_user = \App\User::where('id',$user->id)->first();
        $update_user->f_name=$fname;
        $update_user->l_name=$lname;
        $update_user->phone=$phone;
        $update_user->address=$address;
        $update_user->save();
        return 'updateinfo';
    }
    public function updatepass(Request $request)
    {
        $hidepass = $request->input("hidepass");
        $oldpass = $request->input("oldpass");
        $newpass = $request->input("newpass");
        $user = Auth::user();
        $update_user = \App\User::where('id',$user->id)->first();
        $user_details = json_decode($update_user);
        if($hidepass != $oldpass){
            return 'oldpasswordnotmatch';
        }else{
            $update_user->password=bcrypt($newpass);
            $update_user->text_pass=$newpass;
            $update_user->save();
            return 'passdone';
        }
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
