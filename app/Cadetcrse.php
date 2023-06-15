<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Models\Cadets;

class Cadetcrse extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'courses_id', 'cadets_id', 'sections_id', 'afpnsn', 'term', 'acadyr', 'ccode', 'class'
    ];

    public function course()
    {
        return $this->belongsTo(Course::class, 'courses_id', 'id');
    }

    public function cadet()
    {
        return $this->belongsTo(Cadets::class, 'cadets_id', 'id');
    }

    public function section()
    {
        return $this->belongsTo(Section::class, 'sections_id', 'id');
    }
}
