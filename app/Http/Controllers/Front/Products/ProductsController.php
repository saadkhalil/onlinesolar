<?php

namespace App\Http\Controllers\Front\Products;
use Auth;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use DB;

class ProductsController extends Controller
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
			$products = 'products';
			$system_settings = DB::table('settings')->first();
			return view('front.products.'.$products)->with('system_settings',$system_settings);
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
        
    }
	
    public function get_rates(Request $request){
		$factor=$request->factor;
		$type=$request->type;
		$rate_per_kwh = DB::table('rates')
			// ->select('rate')
			->where('status',1)
			->where('type',$type)
			// ->where('min_fac','<',$factor)
			// ->where('max_fac','>=',$factor)
			->get();
		echo json_encode($rate_per_kwh);
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
