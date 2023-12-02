<?php

namespace App\Models;

use App\Http\Helpers\MethodsHelpers;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Devision extends Model
{
    use HasFactory;

    protected $table = 'devisions';
    protected $fillable = [
        'name',
    ];

    // === Scopre === //

    public function scopeFilterByDateRange($query, $targetField, $since, $until)
    {
        MethodsHelpers::filterByDateRange($query, $targetField, $since, $until);
    }

    public function scopeFilterByField($query, $record, $target)
    {
        MethodsHelpers::filterByField($query, $record, $target);
    }
}
