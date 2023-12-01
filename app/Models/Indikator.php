<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Indikator extends Model
{
    use HasFactory;
    protected $fillabel = [
        'id',
        'nama_indikator',
        'dimensi_id'
    ];

    public function dimensi_id(){
        return $this->belongsTo(Dimensi::class);
    }

    public function sub_indikator(){
        return $this->hasMany(SubIndikator::class);
    }

}
