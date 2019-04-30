<?php

namespace App\Http\Controllers\Front\Cart;
use Auth;
use Session;
use App\User;
use App\Cart;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // if($user = Auth::user())
        // {
        //     return redirect('/');
        // }else{
        //     $register = 'register';
        //     return view('front.register.'.$register);
        // }
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       $electricbill= $request->input('electric_bill'); 
       $electrickwatt= $request->input('electric_kwatt');
       $estyrs= $request->input('estyrs');
       $incentives= $request->input('incentives');
       $taxes= $request->input('taxes');
       $systemsize= $request->input('systemsize');
       $panelmake= $request->input('panelmake');
       $panelmodel= $request->input('panelmodel');
       $numberpanel= $request->input('numberpanel');
       $inverter= $request->input('inverter'); 
       $numberinverter= $request->input('numberinverter');
       $productId = 1;

       $product_attributes = array('electricbill'=>$electricbill,'electrickwatt'=>$electrickwatt,'estyrs'=>$estyrs,'incentives'=>$incentives,'taxes'=>$taxes,'systemsize'=>$systemsize,'panelmake'=>$panelmake,'panelmodel'=>$panelmodel,'numberpanel'=>$numberpanel,'inverter'=>$inverter,'numberinverter'=>$numberinverter,'size'=>'','color'=>'');

       $oldcart= Session::has('cartproduct') ?  Session::get('cartproduct') : null ;
       $acccart = new Cart($oldcart);
       $acccart->add($product_attributes,$productId);
       Session::put('cartproduct',$acccart);
       
       return 'cartadd';
    }

    public function showcartitems(Request $request)
    {
        $acccart=Session::get('cartproduct');
    ?>   
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
        <li><a href="javascript:void(0);" class="product_cart_title"><?php echo $value['panelmake']; ?></a><a id="<?php echo $key; ?>" href="javascript:void(0);" class="cart_product_delete">
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
          <a href="javascript:void(0);" class="btn_theme gobackcartpanel">GO BACK</a>
        </div>
        <div class="col-sm-6 col-xs-12 text-left">
          <a href="javascript:void(0);" class="btn_theme paymentsmethods">Proceed to Checkout</a>
        </div>
      </div>
     </div> 
    <?php }else{ ?>
        No Item added in your cart.
        <div class="col-sm-2 col-xs-12"></div>
        <div class="col-sm-6 col-xs-6 text-right fullwidth_goback">
    <a href="javascript:void(0);" class="btn_theme gobackcartpanel">GO BACK</a>
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
