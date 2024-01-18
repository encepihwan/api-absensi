<?php

namespace App\Models;
use App\Http\Helpers\MethodsHelpers;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Shift extends Model
{
    use HasFactory;
    protected $table = 'shifts';
    protected $fillable = [
        'projectId','userId','timeIn','timeOut'
    ];

    public function scopeFilterByField($query, $record, $value)
    {
        MethodsHelpers::filterByField($query, $record, $value);
    }

    public function scopeEntities($query, $entities)
    {
        MethodsHelpers::entities($query, $entities);
    }

    public function project()
    {
        return $this->belongsTo(Project::class, 'projectId');
    }
    public function user()
    {
        return $this->belongsTo(User::class, 'userId');
    }
}
