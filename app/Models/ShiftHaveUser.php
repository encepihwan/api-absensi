<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShiftHaveUser extends Model
{
    use HasFactory;

    protected $table = 'shift_have_users';

    public function shift()
    {
        return $this->belongsTo(Shift::class, 'shitf_id');
    }

    public function user()
    {
        return $this->belongsTo(Project::class, 'user_id');
    }
}
