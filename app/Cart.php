<?php

namespace App;
class Cart
{

	public $items = null;

  public function __construct($oldcart){
  	if($oldcart){
  		$this->items=$oldcart->items;
  		}
}
  public function add($item, $id){
  	  		$storedItem= ['electricbill'=>$item['electricbill'],'electrickwatt'=>$item['electrickwatt'],'estyrs'=>$item['estyrs'],'incentives'=>$item['incentives'],'tax'=>$item['tax'],'systemsize'=>$item['systemsize'],'panelmake'=>$item['panelmake'],'panelmodel'=>$item['panelmodel'],'numberpanel'=>$item['numberpanel'],'inverter'=>$item['inverter'],'numberinverter'=>$item['numberinverter'],'size'=>$item['size'],'color'=>$item['color']];

         if($this->items){
          foreach ($this->items as $key => $value) {
                if($storedItem['electricbill'] == $value['electricbill'] && $storedItem['electrickwatt'] == $value['electrickwatt'] && $storedItem['estyrs'] == $value['estyrs'] && $storedItem['incentives'] == $value['incentives'] && $storedItem['tax'] == $value['tax'] && $storedItem['systemsize'] == $value['systemsize'] && $storedItem['panelmake'] == $value['panelmake'] && $storedItem['panelmodel'] == $value['panelmodel'] && $storedItem['numberpanel'] == $value['numberpanel'] && $storedItem['inverter'] == $value['inverter'] && $storedItem['numberinverter'] == $value['numberinverter']){
                    //$storedItem['quantity'] = $storedItem['quantity'] + $value['quantity'];
                    //$this->items[$key]=$storedItem;
                    break;
                }else{
                    $this->items[]=$storedItem;
                    break;
                } 
          }
        }else{
          $this->items[]=$storedItem;
        }
 		}
}