<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use phpDocumentor\Reflection\Types\Parent_;

class Message extends Model
{
    protected $table = 'messages';

    protected $fillable = "body";


     public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
     public function teacher()
    {
        return $this->belongsTo(Teacher::class);
    }
     public function parent()
    {
        return $this->belongsTo(Parents::class);
    }
     public function student()
    {
        return $this->belongsTo(Student::class);
    }
}


