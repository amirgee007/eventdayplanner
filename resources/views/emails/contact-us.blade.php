@extends('emails/layouts/default')

@section('content')
    <p>Hello ,</p>

    <p>Event Day Planner received a new Email.</p>

    <p>The provided details are:</p>

    <p>Name: {{ $data['contact_name'] }}</p>
    <p>Email: {{ $data['contact_email'] }}</p>
    <p>Comment: {{ $data['contact_msg'] }}</p>


@stop
