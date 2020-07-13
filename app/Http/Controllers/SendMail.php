<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AduanModel;
use App\ProgresAduanModel;
use Mail;
use App\Mail\SendEmailNotif;
use App\Jobs\EmailJob;

class SendMail extends Controller
{
    public function basic_email() {        
      $data = array('name'=>"testing 123");
   
      Mail::send(['text'=>'email.mail'], $data, function($message) {
         $message->to('yovimaulanan@gmail.com', 'Yovi Test')->subject
            ('Laravel Basic Testing Mail');
         $message->from('asd@gmail.com','Test 123');
      });
      echo "Basic Email Sent. Check your inbox.";
   }
   public function html_email() {
    //   $data = array('name'=>"Virat Gandhi");
    //   Mail::send('email.mail', $data, function($message) {
    //      $message->to('yovimaulanan@gmail.com', 'Tutorials Point')->subject
    //         ('Laravel HTML Testing Mail');
    //      $message->from('xyz@gmail.com','Virat Gandhi');
    //   });
        $data = array('name' => 'Andrew Stewart', 'address' => 'tokyo');
        dispatch(new EmailJob($data));
    //   Mail::to('asdf@test.com')->send(new SendEmailNotif($data));
      echo "HTML Email Sent. Check your inbox.";
   }
   public function attachment_email() {
      $data = array('name'=>"Virat Gandhi");
      Mail::send('email.mail', $data, function($message) {
         $message->to('yovimaulanan@gmail.com', 'Tutorials Point')->subject
            ('Laravel Testing Mail with Attachment');
         $message->attach('C:\laravel-master\laravel\public\uploads\image.png');
         $message->attach('C:\laravel-master\laravel\public\uploads\test.txt');
         $message->from('xyz@gmail.com','Virat Gandhi');
      });
      echo "Email Sent with attachment. Check your inbox.";
   }

   public function sendNotifEmail()
   {
       $data = array(
            'progres_aduan' => ProgresAduanModel::where('no_ticket', 'UR90013SM5MH')->get(),
            'aduan' => AduanModel::find('UR90013SM5MH')
       );
        Mail::send('email.template-progres', (array('data' =>$data)), function($message) {
         $message->to(config('mail.from.address'), 'asdf')->subject
            ('Cek Progres Respon');
         $message->from('sgrgzone@gmail.com','Admin 123');
      });
      echo "HTML Email Sent. Check your inbox.";
   }
}
