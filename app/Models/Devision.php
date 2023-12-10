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

    public function scopeGenerateSlug($q, $title)
    {
        $new_slug = Str::slug($title);
        $slug_check = $q->where('slug', $new_slug)->count();
        if ($slug_check == 0) {
            $slug = $new_slug;
        } else {
            $check = 0;
            $unique = false;
            while ($unique == false) {
                $inc_id = ++$check;
                $check = $q->where('slug', $new_slug . '-' . $inc_id)->count();
                if ($check > 0) {
                    $unique = false;
                } else {
                    $unique = true;
                }
            }
            $slug = $new_slug . '-' . $inc_id;
        }

        return $slug;
    }
}
