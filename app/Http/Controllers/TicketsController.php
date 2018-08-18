<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Ticket;
use App\User;
use Auth;
use Sentinel;
use App\Http\Requests;
use Session;

class TicketsController extends Controller
{
	public function index()
      {
    $tickets = Ticket::paginate(10);
   
    return view('tickets/index', compact('tickets'));
      }
    public function create()
    {
    
    return view('tickets/create');
     }

     public function store(Request $request)
     {
    $this->validate($request, [
            'title'     => 'required',  
            'priority'  => 'required',
            'message'   => 'required'
        ]);

        $ticket = new Ticket([
            'title'     => $request->input('title'),
            'user_id'   => Sentinel::getuser()->id,
            'ticket_id' => strtoupper(str_random(10)),
          
          
            'message'   => $request->input('message'),
            'status'    => "Open",
        ]);
        $ticket->save();
        return redirect()->route('tickets-all')->with("status", "A ticket with ID: #$ticket->ticket_id has been opened.");
      }

     public function userTickets()
        {
       $tickets = Ticket::where('user_id', Sentinel::getuser()->id)->paginate(10);


        return view('tickets/user_tickets', compact('tickets'));
        }
 
     public function show($ticket_id)
      {
       $ticket = Ticket::where('ticket_id', $ticket_id)->firstOrFail();

        $comments = $ticket->comments;

        return view('tickets/show', compact('ticket',  'comments'));
    } 

     public function close($ticket_id)
     {
        $ticket = Ticket::where('ticket_id', $ticket_id)->firstOrFail();

        $ticket->status = 'Closed';

        $ticket->save();

         $ticketOwner = $ticket->user;
         Session::flash('success','The ticket has been closed');
         return redirect()->back();
     }

     public function adminIndex(){

	    $tickets = Ticket::paginate(10);
   
        return view('admin/tickets/index', compact('tickets'));
     }

     public function adminShowTickets($ticket_id)
      {
        $ticket = Ticket::where('ticket_id', $ticket_id)->firstOrFail();

         $comments = $ticket->comments;

        return view('admin/tickets/comment', compact('ticket','comments'));
       }

      public function showTickets($ticket_id){

	      $ticket = Ticket::where('ticket_id', $ticket_id)->firstOrFail();

          $comments = $ticket->comments;

          return view('admin/tickets/show', compact('ticket',  'comments'));
}
}
