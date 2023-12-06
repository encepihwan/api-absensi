<?php

namespace App\Models;

use App\Http\Helpers\MethodsHelpers;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;
    protected $fillable = [
        'devisionId',
        'userId',
        'projectNo',
        'startdate',
        'targetdate',
        'cost',
        'status',
        'rowStatus',
        'address',
        'latitude',
        'longtitude'
    ];

    public function scopeFilterByField($query, $record, $value)
    {
        MethodsHelpers::filterByField($query, $record, $value);
    }

    public function scopeEntities($query, $entities)
    {
        MethodsHelpers::entities($query, $entities);
    }
}
