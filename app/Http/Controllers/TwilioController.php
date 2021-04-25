<?php

namespace App\Http\Controllers;

use App\User;
use App\Parents;
use App\Student;
use App\Teacher;
use Twilio\Rest\Client;
use App\UsersPhoneNumber;
use Illuminate\Http\Request;
use phpDocumentor\Reflection\Types\Parent_;


class TwilioController extends Controller
{
    /**
     * Show the forms with users phone number details.
     *
     * @return Response
     */
    public function show()
    {
                $students = Student::all();
             return view('backend.students.sms', compact("students"));
                //$users = UsersPhoneNumber::all();
                    // return view('welcome', compact("users"));
    }
     public function smsLecturer()
    {
            $lectures =Teacher::all();
             return view('backend.teachers.sms', compact("lectures"));

    }

     public function smsParent()
    {

           $parents = Parents::all();
           //return $parents;
           //return response('$parents');
             return view('backend.parents.sms', compact("parents"));
    }

     public function smsAll()
    {

          // $smsAll = User::all();
            $students = Student::all();
            $parents = Parents::all();
            $lectures =Teacher::all();

             return view('sms', compact(["students","parents","lectures"]));
    }
    /**
     * Store a new user phone number.
     *
     * @param  Request  $request
     * @return Response
     */
    public function storePhoneNumber(Request $request)
    {
        //run validation on data sent in
        $validatedData = $request->validate([
            'phone_number' => 'required|unique:users_phone_number|numeric',
        ]);
        $user_phone_number_model = new UsersPhoneNumber($request->all());
        $user_phone_number_model->save();
        $this->sendMessage('User registration successful!!', $request->phone_number);
        return back()->with(['success' => "{$request->phone_number} registered"]);
    }
    /**
     * Send message to a selected users
     */
    public function sendCustomMessage(Request $request)
    {
        $validatedData = $request->validate([
            'users' => 'required|array',
            'body' => 'required',
        ]);
        $recipients = $validatedData["users"];
        // iterate over the array of recipients and send a twilio request for each
        foreach ($recipients as $recipient) {
            $this->sendMessage($validatedData["body"], $recipient);
        }
        return back()->with(['success' => "Messages on their way!"]);
    }
    /**
     * Sends sms to user using Twilio's programmable sms client
     * @param String $message Body of sms
     * @param Number $recipients Number of recipient
     */
    private function sendMessage($message, $recipients)
    {
        $account_sid = getenv("TWILIO_SID");
        $auth_token = getenv("TWILIO_AUTH_TOKEN");
        $twilio_number = getenv("TWILIO_NUMBER");
        $client = new Client($account_sid, $auth_token);
        $client->messages->create($recipients, ['from' => $twilio_number, 'body' => $message]);
    }
}
