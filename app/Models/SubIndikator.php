<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubIndikator extends Model
{
    use HasFactory;
    protected $fillabel = [
        'id',
        'nama_subIndikator', 
        'indikator_id'
    ];
    public function indikator()
    {
        return $this->belongsTo(Indikator::class);
    }
}
