<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AduanModel extends Model
{
    protected $table = 'data_pengaduan';
    public $timestamps = false;
    public $primaryKey = 'no_ticket';
    public $incrementing = false;

    public function progresAduan()
    {
        return $this->hasMany('App\ProgresAduanModel', 'no_ticket');
    }
}

