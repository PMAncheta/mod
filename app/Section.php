<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'cadetcrse_id', 'secrank', 'sec',
    ];

    public function cadetcrse()
	{
		return $this->HasMany(Cadetcrse::class);
	}
}
