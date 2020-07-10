<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AduanModel;
use App\KategoriAduanModel;
use App\ProgresAduanModel;

class AduanController extends Controller
{   
    public function getPage(Request $request)
    {        
        $data = array(
            'option_kategori' => KategoriAduanModel::where('is_active', 1)->get(),
        );
        return view('home', $data);
    } 

    public function save(Request $request)
    {        
        $data = $request->data;                            
        $randomTicket = $this->getRandomTicket();
        date_default_timezone_set('Asia/Jakarta');
        $date_created = date('Y-m-d H:i:s', strtotime("+1 hours"));         
        parse_str($data, $output);                
        $aduan = new AduanModel;
        $aduan->no_ticket = $randomTicket;
        $aduan->nama = $output['nama_pelapor'];
        $aduan->alamat = $output['alamat_pelapor'];
        $aduan->no_hp = $output['no_telp'];
        $aduan->email = $output['email_pelapor'];
        $aduan->created_at = $date_created;
        $aduan->pesan_pengaduan = $output['isi_laporan'];
        $aduan->judul_pengaduan = $output['judul_laporan'];
        $aduan->kategori = $output['kategori_laporan'];
        $aduan->is_respond = 0;
        $aduan->save();
        echo json_encode(array('result' => 'sukses', 'ticket' => $randomTicket));
    }

    public function getRandomTicket()
    {
        $date = date_create();  
        $dt_temp = substr(date_timestamp_get($date), -5); 
        $randomTicket = $this->generateRandomString(2).''.$dt_temp.$this->generateRandomString();        
        $checkIfTicketExists = AduanModel::where('no_ticket', $randomTicket)->get();
        if($checkIfTicketExists->count())
        {
            $this->getRandomTicket();
        }
        return $randomTicket;
    }

    public function get(Request $request)
    {
        $nomor_aduan = $request->no_aduan;
        $aduan = AduanModel::find($nomor_aduan);
        $progres_aduan = [];
        if($aduan)
        {
            $progres_aduan = AduanModel::find($nomor_aduan)->progresAduan;
        }
        
        echo json_encode(array('aduan' => $aduan, 'progres_aduan' => $progres_aduan));
    }

    public function response(Request $request)
    {
        date_default_timezone_set('Asia/Jakarta');
        $date_created = date('Y-m-d H:i:s', strtotime("+1 hours")); 
        $data = $request->data;
        $respon = new ProgresAduanModel;
        $respon->no_ticket = $data['no_ticket'];
        $respon->updated_at = $date_created; 
        $respon->tanggapan = $data['respon'];
        $respon->pelapor = 'pelapor';        
        $respon->save();

        $aduan = AduanModel::find($data['no_ticket']);
        $aduan->is_respond = 0;
        $aduan->save();
        $progres_aduan = $aduan->progresAduan;
        echo json_encode(array('result' => 'sukses', 'respon' => $progres_aduan));
    }

    function generateRandomString($length = 5) {
        $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }
}
