<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    protected $table = 'products';
    protected $primaryKey = 'id';
    protected $fillable   = ['id','title','price','description','sizes','colors','image','status','created_at','updated_at'];
    protected $id = 1;
    protected $title;
    protected $price;
    protected $description;
    protected $sizes;
    protected $colors;
    protected $image;
    protected $status;
    protected $created_at;
    protected $updated_at;
}