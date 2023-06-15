<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'deptcode', 'dept_desc', 'dept_initls',
    ];

    public function course()
	{
		return $this->HasMany(Course::class);
	}
}
