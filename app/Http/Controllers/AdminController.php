<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AdminModel;
use App\KategoriAduanModel;
use App\AduanModel;
use App\ProgresAduanModel;
use Datetime;
use Carbon\Carbon;

class AdminController extends Controller
{
    public function getHomePage(Request $request)
    {
        // $aduanArr = array();
        $aduan_perbulan = AduanModel::select('no_ticket', 'created_at')
                            ->whereYear('created_at', date('Y'))
                            ->get()
                            ->groupBy(function($date) {
                                return Carbon::parse($date->created_at)->format('m');
                            });
        $aduanmcount = [];
        $aduanArr = [];

        foreach ($aduan_perbulan as $key => $value) {
            $aduanmcount[(int)$key] = count($value);
        }

        for($i = 1; $i <= 12; $i++){
            if(!empty($aduanmcount[$i])){
                $aduanArr[$i] = $aduanmcount[$i];    
            }else{
                $aduanArr[$i] = 0;    
            }
        }

        $data = array(
            'pengaduan_month' => AduanModel::whereMonth('created_at', date('n'))->whereYear('created_at', date('Y'))->get(),
            'pengaduan_today' => AduanModel::whereDay('created_at', date('d'))->whereMonth('created_at', date('n'))->whereYear('created_at', date('Y'))->get(),
            'pengaduan_total' => AduanModel::all(),
            'pengaduan_norespon' => AduanModel::where('is_respond', 0)->get(),
            'pengaduan_perbulan' => $aduanArr,
        );
        return view('admin.pages.home', $data);
    }

    public function newKategori(Request $request)
    {
        $data = $request->data;
        $kategori = new KategoriAduanModel;
        $kategori->kategori = $data;
        $kategori->is_active = 1;
        $kategori->save();        
        echo json_encode(array('result' => 'sukses', 'kategori' => $kategori->id));
    }

    public function getMasterKategoriPage(Request $request)
    {
        $daftar_kategori = KategoriAduanModel::all();
        $data = array(
            'kategori' => $daftar_kategori
        );
        return view('admin.pages.master-kategori', $data);
    }

    public function getKategori(Request $request)
    {
        $daftar_kategori = KategoriAduanModel::all();
        echo json_encode(array('result' => $daftar_kategori));
    }

    public function getDaftarPengaduanPage(Request $request, $no_ticket = null)    
    {
        if($no_ticket == null)
        {        
            $daftar_aduan;
            $state = $request->get('state');
            $grouped = AduanModel::all()->groupBy('is_respond');
            // $grouped = $kategori_all->groupBy('is_respond');
            $groupCount = array();
            if($grouped->count() > 0)
            {
                $groupCount = $grouped->map(function ($item, $key) {
                    return collect($item)->count();
                });
            } else 
            {
                $groupCount = array(
                    '0' => 0,
                    '1' => 0
                );
            }            

            

            if($state == 'closed') 
            {
                // $daftar_aduan = AduanModel::where('is_respond', 1)->paginate(2);
                $daftar_aduan = AduanModel::join('kategori_pengaduan', 'kategori_pengaduan.id', '=', 'data_pengaduan.kategori')
                                ->select('data_pengaduan.*', 'kategori_pengaduan.kategori as nama_kategori')
                                ->where('is_respond', 1)
                                ->paginate(10);
            } else 
            {
                // $daftar_aduan = AduanModel::where('is_respond', 0)->paginate(2);
                $daftar_aduan = AduanModel::join('kategori_pengaduan', 'kategori_pengaduan.id', '=', 'data_pengaduan.kategori')
                                ->select('data_pengaduan.*', 'kategori_pengaduan.kategori as nama_kategori')
                                ->where('is_respond', 0)
                                ->paginate(10);
                $state = 'opened';
            }
            
            $data = array(
                'daftar_aduan' => $daftar_aduan,
                'state' => $state,
                'count_aduan' => $groupCount
            );
            return view('admin.pages.daftar-pengaduan', $data);
        } else 
        {
            $aduan = AduanModel::find($no_ticket);
            if($aduan)
            {                           
                $data = array(
                    'progres_aduan' => $aduan->progresAduan,
                    'aduan' => $aduan,                    
                );
                return view('admin.pages.respon-pengaduan', $data);
            } else 
            {
                return view('pagenotfound');
            }                    
        }
    }

    public function save(Request $request)
    {
        $data = $request->data;
        $kategori = KategoriAduanModel::find($data['kategori']);
        $kategori->kategori = $data['val'];
        $kategori->save();
        echo json_encode(array('result' => 'sukses'));
    }

    public function setAktif(Request $request)
    {
        $data = $request->data;        
        $kategori = KategoriAduanModel::find($data['kategori']);
        $kategori->is_active = $data['active'];
        $kategori->save();
        echo json_encode(array('result' => 'sukses'));
    }

    public function responAdmin(Request $request)
    {
        date_default_timezone_set('Asia/Jakarta');
        $date_created = date('Y-m-d H:i:s', strtotime("+1 hours")); 
        $data = $request->data;
        $respon = new ProgresAduanModel;
        $respon->no_ticket = $data['ticket'];
        $respon->updated_at = $date_created; 
        $respon->tanggapan = $data['respon'];
        $respon->pelapor = 'admin';
        $respon->save();

        $progres_aduan = ProgresAduanModel::where('no_ticket', $data['ticket'])->get();                                         
        $keyed = $progres_aduan->mapWithKeys(function($item) {
            $date_now = date('Y-m-d H:i:s', strtotime("+1 hours")); 
            $now = new Datetime($date_now);
            $created_date = new Datetime($item['updated_at']);
            $diffDate = $now->diff($created_date);
            $keterangan = '';
            if($diffDate->y > 0)
            {
                $keterangan = $diffDate->y.' years ago';
            } else if($diffDate->m > 0)
            {
                $keterangan = $diffDate->m.' months ago';
            } else if($diffDate->d > 0)
            {
                $keterangan = $diffDate->d.' days ago';
            } else if($diffDate->h > 0)
            {
                $keterangan = $diffDate->h.' hours ago';
            } else 
            {
                $keterangan = $diffDate->i.' minutes ago';
            }
            return [$item['id'] => $keterangan];
        });

        $aduan_temp = AduanModel::find($data['ticket']);
        $aduan_temp->is_respond = 1;
        $aduan_temp->save();

        echo json_encode(array('result' => 'sukses', 'respon' => $progres_aduan, 'keyed' => $keyed->all()));
    }

    public function delete(Request $request)
    {
        $data = $request->data;
        $kategori = KategoriAduanModel::find($data);
        $kategori->delete();
        echo json_encode(array('result' => 'sukses'));
    }
}
