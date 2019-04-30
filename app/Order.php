<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';
    protected $primaryKey = 'id';
    protected $fillable   = ['id','user_id','order_id','payment_method','electric_bill','electric_killowatt','electric_yrs','incentives','taxes','sys_size','panel_make','panel_modle','number_of_panel','  invertor','number_of_invertor','discounts','total_amount','status', 'created_at','updated_at'];
    protected $id = 1;
    protected $user_id;
    protected $order_id;
    protected $payment_method;
    protected $electric_bill;
    protected $electric_killowatt;
    protected $electric_yrs;
    protected $incentives;
    protected $taxes;
    protected $sys_size;
    protected $panel_make;
    protected $panel_modle;
    protected $number_of_panel;
    protected $invertor;
    protected $number_of_invertor;
    protected $discounts;
    protected $total_amount;
    protected $status;
    protected $created_at;
    protected $updated_at;
    
    

}