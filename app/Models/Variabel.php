<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Variabel extends Model
{
    use HasFactory;
    protected  $fillable = [
        'nama_variabel',
        'nilai'
    ];
    // public function dimensi()
    // {
    //     return $this->belongsTo(Dimensi::class);
    // }
}
