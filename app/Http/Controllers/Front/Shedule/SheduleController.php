<?php

namespace App\Http\Controllers\Front\Shedule;
use Auth;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class SheduleController extends Controller
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
        $userorder = \App\Order::latest()->where('user_id',$user->id)->first();
        $shedule = 'shedule';
        return view('front.shedule.'.$shedule)->with('userorder',$userorder);
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
    public function store(Request $request)
    {
          $type=Array(1 => 'jpg', 2 => 'jpeg', 3 => 'png', 4 => 'gif');
          $userbill_ext = explode(".",$_FILES['billupload']['name']);
          $userbill_filename = $_FILES['billupload']['name'];
          $userbill_target_path = "public/uploads/userbills/";
          $ordernum = $request->input("ordernum");
          if(!(in_array($userbill_ext[1],$type))){
                return 'invalidimage';
          }else{
             $target_path = $userbill_target_path . $userbill_filename;
             move_uploaded_file($_FILES['billupload']['tmp_name'], $target_path);
             $update_order = \App\Order::where('order_id',$ordernum)->get();
             foreach ($update_order as $key => $value) {
                 $update = \App\Order::where('id',$value['id'])->first();
                 $update->utility_bill=$userbill_filename;
                 $update->updated_at=date("Y-m-d H:i:s");
                 $update->save();
             }
                return 'done';

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
