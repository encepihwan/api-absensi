<?php

namespace App\Models;

use App\Http\Helpers\MethodsHelpers;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    use HasFactory;
    // protected $table = 'attendances';
    protected $fillable = ['userId', 'mediaAttendaceId', 'mediaOfWorkId', 'projectId', 'latitude', 'longtitude', 'date', 'time', 'type'];

    public function scopeFilterByField($query, $record, $value)
    {
        MethodsHelpers::filterByField($query, $record, $value);
    }

    public function scopeEntities($query, $entities)
    {
        MethodsHelpers::entities($query, $entities);
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'userId');
    }

    public function project()
    {
        return $this->belongsTo(Project::class, 'projectId');
    }

    public function media()
    {
        return $this->belongsTo(Medias::class, 'mediaAttendaceId');
    }

    public function mediaProof()
    {
        return $this->belongsTo(Medias::class, 'mediaOfWorkId');
    }
}
