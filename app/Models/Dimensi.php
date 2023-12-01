<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Dimensi extends Model
{
    use HasFactory;
    protected $fillable = [
        'id',
        'nama_dimensi'
    ];

    public function indikator(){
        return $this->hasMany(Indikator::class); 
    }

}
