<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'departments_id' ,'ccode', 'cname', 'description', 'units',
    ];

    public function department()
    {
        return $this->belongsTo(Department::class, 'departments_id', 'id');
    }

    public function cadetcrse()
    {
        return $this->HasMany(Cadetcrse::class);
    }
}
