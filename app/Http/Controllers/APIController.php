<?php 
namespace App\Http\Controllers;

use App\Ad;
use Illuminate\Http\Request;
use Sentinel;

// Model Usage
use App\Booking;

class APIController extends Controller
{

    function gteBookedEventsPerDay($id){

        if (\Sentinel::check()) {
            $user = \Sentinel::getUser();
        }

        $ad = Ad::where('id', $id)->where('user_id', $user->id)->first();

        if (!$ad)
            return redirect('ads')->with('error', 'Error');

        $bookings = Booking::where('ads_id', $id)->groupBy('book_date')->orderBy('book_date', 'DESC')->with('user')->get();

        $booking_events = [];

        foreach($bookings as $booking){

            if ($booking->user_id == $user->id) {
                $data['title'] = $booking->name;
                $data['start'] = $booking->book_date;
                $data['end'] = $booking->book_date;
                $data['backgroundColor'] = '#F44336'; //red
            }
            else{

                $data['title'] = $booking->name;
                $data['start'] = $booking->book_date;
                $data['end'] = $booking->book_date;
                $data['backgroundColor'] = '#2bea0c'; //green
            }

            $booking_events[] = $data;
        }

        return response()->json($booking_events);

    }








    // Get available days
    function GetAvailableDays($ad_id) {

        $bookings=Booking::where('ads_id',$ad_id)->whereBetween('book_date', [date('Y-m-d'), date('Y-m-d', strtotime(date('Y-m-d') . '+30 day'))])->lists('book_date');
        //dd($bookings);
        for($i=1;$i<=30;$i++){

           $d= date('Y-m-d', strtotime(date('Y-m-d') . '+'.$i.' day'));
            if (!in_array($d, $bookings->toArray())) {
                    
            
            $date[]=$d;//date('Y-m-d H:i:s', strtotime(date('Y-m-d') . '+'.$i.' day'));
        }
        }
        return response()->json($date);
    }

    function GetAppointments($ad_id){

        $bookings=Booking::where('ads_id',$ad_id)->lists('book_date');
        //dd($bookings);
        /*for($i=1;$i<=30;$i++){

           $d= date('Y-m-d', strtotime(date('Y-m-d') . '+'.$i.' day'));
            if (!in_array($d, $bookings->toArray())) {
                    
            
            $date[]=$d;//date('Y-m-d H:i:s', strtotime(date('Y-m-d') . '+'.$i.' day'));
        }
        }*/
        return response()->json($bookings);

    }
  
}

