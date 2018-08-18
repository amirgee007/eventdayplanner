<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;
use App\Http\Requests;
use Sentinel;
use Carbon\Carbon;

class CommentsController extends Controller
{
    public function postComment(Request $request)
    {
        $this->validate($request, [
            'comment' => 'required'
        ]);

        $comment = Comment::create([
            'ticket_id' => $request->input('ticket_id'),
            'user_id' => Sentinel::getuser()->id,
            'comment' => $request->input('comment'),
        ]);


        return redirect()->back()->with("status", "Your comment has be submitted.");
    }

    public function adminPostComment(Request $request)
    {

        $this->validate($request, [
            'comment' => 'required'
        ]);

        $comment = Comment::create([
            'ticket_id' => $request->input('ticket_id'),
            'user_id' => Sentinel::getuser()->id,
            'comment' => $request->input('comment'),
        ]);


        return redirect()->back()->with("status", "Your comment has be submitted.");
    }
}
