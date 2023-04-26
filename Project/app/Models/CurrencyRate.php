<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CurrencyRate extends Model
{
    protected $table = 'currency_rates';
    protected $fillable = ['currency', 'date', 'amount'];
    public $timestamps = false;
    public $incrementing = false;
}
