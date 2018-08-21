<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Ticket;
use App\User;
use Auth;
use Sentinel;
use Session;


class SupportTicketController extends Controller
{
    const STATUS_OPEN = 'open';
    const STATUS_CLOSE = 'closed';

    //--------------------------User Tickets methods-----------------------------------------------//

    public function userTickets()
    {
        $tickets = Ticket::where('user_id', Sentinel::getuser()->id)->paginate(10);

        return view('support-tickets.index', compact('tickets'));
    }

    public function create()
    {
        return view('support-tickets.create');
    }

    public function show($ticket_id)
    {
        $ticket = Ticket::where('ticket_id', $ticket_id)->firstOrFail();

        $comments = $ticket->comments;

        return view('support-tickets.show', compact('ticket', 'comments'));
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'priority' => 'required',
            'message' => 'required'
        ]);

        $ticket = new Ticket([
            'title' => $request->input('title'),
            'user_id' => Sentinel::getuser()->id,
            'ticket_id' => strtoupper(str_random(10)),
            'message' => $request->input('message'),
            'status' => 'open',
        ]);

        $ticket->save();

        return redirect()->route('user-support-tickets')->with("status", "A support ticket with ID: #$ticket->ticket_id has been opened.");
    }


    public function close($ticket_id)
    {
        Ticket::where('ticket_id', $ticket_id)->update(['status' => 'closed']);

        Session::flash('success', 'The support ticket has been closed');

        return back();
    }

    //--------------------------Admin Tickets methods-----------------------------------------------//


    public function adminIndex()
    {

        $tickets = Ticket::paginate(10);

        return view('admin/support-tickets/index', compact('tickets'));
    }

    public function AdminShowTicket($ticket_id)
    {

        $ticket = Ticket::where('ticket_id', $ticket_id)->firstOrFail();

        $comments = $ticket->comments;

        return view('admin/support-tickets/show', compact('ticket', 'comments'));
    }
}
