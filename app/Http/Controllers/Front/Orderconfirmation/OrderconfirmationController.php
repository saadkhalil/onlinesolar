<?php

namespace App\Http\Controllers\Front\Orderconfirmation;
use Auth;
use Session;
use App\User;
use App\Cart;
use App\Order;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class OrderconfirmationController extends Controller
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
            $userorder = \App\Order::where('user_id',$user->id)->first();
            $products = \App\Products::latest('id','desc')->where('status',1)->get();
            $orderconfirmation = 'orderconfirmation';
            return view('front.orderconfirmation.'.$orderconfirmation)->with('userorder',$userorder)->with('products',$products);
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
    public function store($id,$payslug)
    {
        $user = Auth::user();
        $userId = $user->id;
        $getlast_record = \App\Order::orderBy('created_at', 'desc')->first();
        $last_record_details = json_decode($getlast_record);
        if($getlast_record){
            $orderNumber = 'SLP00'.$getlast_record->id;
        }else{
            $orderNumber = 'SLP001';
        }

        $acccart=Session::get('cartproduct');
        foreach ($acccart->items as $key => $value){
            $total[] = $value['electricbill'];
            $order_place = new Order();
            $order_place->user_id=$userId;
            $order_place->order_id=$orderNumber;
            $order_place->payment_method=$payslug;
            $order_place->electric_bill=$value['electricbill'];
            $order_place->electric_killowatt=$value['electrickwatt'];
            $order_place->electric_yrs=$value['estyrs'];
            $order_place->incentives=$value['incentives'];
            $order_place->taxes=$value['taxes'];
            $order_place->sys_size=$value['systemsize'];
            $order_place->panel_make=$value['panelmake'];
            $order_place->panel_modle=$value['panelmodel'];
            $order_place->number_of_panel=$value['numberpanel'];
            $order_place->invertor=$value['inverter'];
            $order_place->number_of_invertor=$value['numberinverter'];
            $order_place->discounts=0;
            $order_place->total_amount=0;
            $order_place->size=$value['size'];
            $order_place->color=$value['color'];
            $order_place->status=0;
            $order_place->created_at=date("Y-m-d H:i:s");
            $order_place->updated_at=date("Y-m-d H:i:s");
            $order_place->save();
        }
        session()->forget('cartproduct');
        return redirect('/shedulevisit');
    }

    public function addonetime(Request $request)
    {
        $amount= $request->input('amount'); 
        $size= $request->input('size');
        $color= $request->input('color');
        $title= $request->input('title');
        $productId = 1;

        $product_attributes = array('electricbill'=>$amount,'electrickwatt'=>'','estyrs'=>'','incentives'=>'','taxes'=>'','systemsize'=>'','panelmake'=>$title,'panelmodel'=>'','numberpanel'=>'','inverter'=>'','numberinverter'=>'','size'=>$size,'color'=>$color);

       $oldcart= Session::has('cartproduct') ?  Session::get('cartproduct') : null ;
       $acccart = new Cart($oldcart);
       $acccart->add($product_attributes,$productId);
       Session::put('cartproduct',$acccart);

        return 'adddone';
    }

    public function showcart_otoitems(Request $request)
    {
        $acccart=Session::get('cartproduct');
    ?>   
    <div class="container">
    <div class="row cart_box_row">
    <div class="col-sm-2 col-xs-12"></div>
    <div class="col-sm-8 col-xs-12 cart_box">
    <div id="cartsItem" class="cart_box_inner">
    <h2 class="text-center"><i class="fa fa-shopping-cart"></i> Your Cart</h2>
    <h5 class="text-center"><?php echo count($acccart->items); ?> ITEM</h5>
    <?php if(count($acccart->items) > 0){ ?>
    <ul id="cartsItem" class="cart_item_ul"> 
    <?php    
            foreach ($acccart->items as $key => $value){
            $total[] = $value['electricbill']; 
        ?>
        <li><a href="javascript:void(0);" class="product_cart_title"><?php echo $value['panelmake']; ?></a><a id="<?php echo $key; ?>" href="javascript:void(0);" class="cart_otoproduct_delete">
<i class="fa fa-trash"></i></a><a href="javascript:void(0);" class="cart_product_price"><?php echo '$'.$value['electricbill']; ?></a></li>
        <?php    
        } ?>
    </ul>
        <?php 
        if(isset($total)){ 
            $subtotal = array_sum($total);
            $disscount = array_sum($total)/2;
            $checkoutprice = $subtotal - $disscount;
        ?>
       <ul class="cart_subtotal_ul">
        <li>SUBTOTAL: <span><?php echo '$'.$subtotal; ?></span></li>
        <li class="dash_before">DISCOUNT: <span><?php echo '$'.$disscount; ?></span></li>
        <li class="total_cart">TOTAL: <span><?php echo '$'.$checkoutprice; ?></span></li>
        </ul>     
        <input type="hidden" name="totalamount" id="totalamount" value="<?php echo $checkoutprice; ?>">
     <?php   } ?>
     </div>
     <div class="row go_back_btn_row">
        <div class="col-sm-6 col-xs-12 text-right">
          <a href="javascript:void(0);" class="btn_theme backotopanel">GO BACK</a>
        </div>
        <div class="col-sm-6 col-xs-12 text-left">
          <a href="javascript:void(0);" class="btn_theme paynows">PAY NOW</a>
        </div>
      </div>
     </div> 
    <?php }else{ ?>
        No Item added in your cart.
        <div class="col-sm-2 col-xs-12"></div>
        <div class="col-sm-6 col-xs-6 text-right">
    <a href="javascript:void(0);" class="btn_theme backotopanel">GO BACK</a>
    </div>
    </div>
    </div>
    <?php  } ?>
     <?php

    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
       $arrnum= $request->input('id');
       $acccart=Session::get('cartproduct');
       unset($acccart->items[$arrnum]); 
       return 'delete';
    }
}
