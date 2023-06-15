<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cadets extends Model
{
    public $timestamps = false;
    protected $table = 'cadets';
    protected $fillable = ['afpsn', 'servid', 'majid', 'yrgr', 'oyrgr', 'lname', 'fname', 'aname', 'mname',
                          'initls', 'gender', 'bdate', 'bplace', 'papa', 'padead', 'mama', 'madead', 'guardian',
                          'addr1', 'addr2', 'zipcode', 'region', 'highsch', 'height', 'eefscore', 'math', 'engl',
                          'spma', 'coy', 'battalion', 'battalion2', 'cstat', 'remarks', 'pix', 'dategrad',
                          'degree', 'gradute', 'password', 'coybat'
    ];

    public function cadetcrse()
    {
        return $this->HasMany(Cadetcrse::class);
    }
}
