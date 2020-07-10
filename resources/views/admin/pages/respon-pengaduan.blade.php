@extends('admin.layout.layout')
@section('title') Daftar Laporan Pengaduan @endsection

@section('css-page')
<style>
    span.page-title {
        font-size: smaller !important;
    }

    .c-badge {
        font-weight: 600;
        border: 1px solid #fff;
        border-radius: .5rem;
        padding: 5px;        
        color: #fff;
    }

    .c-badge__danger {
        background: #f00303;
    }

    .c-badge__success {
        background: green;
    }
</style>
@endsection

@section('content')
<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <ul class="breadcrumb breadcrumb-style">
            <li>
                <a href="../daftar-pengaduan"><span class="page-title">Laporan Pengaduan</span></a>
            </li>
            <li>
                <span class="page-title">No. Ticket: {{last(request()->segments())}}</span>
            </li>
        </ul>
    </div>
</div>
<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="body">
                <h3>{{ $aduan->judul_pengaduan }}</h3>
                <p>{{ $aduan->pesan_pengaduan }}</p>
                @php                
                    date_default_timezone_set('Asia/Jakarta');
                    $date_now = date('Y-m-d H:i:s', strtotime("+1 hours")); 
                    $now = new Datetime($date_now);
                    $created_date = new Datetime($aduan->created_at);
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
                @endphp
                <p><small>Reported {{ $keterangan }} by <span style="font-weight: bold">{{ $aduan->nama }} </span> </small></p>
                <hr>
                <div class="sk-cube-grid loader-square" style="display: none">
                <div class="sk-cube sk-cube1"></div>
                <div class="sk-cube sk-cube2"></div>
                <div class="sk-cube sk-cube3"></div>
                <div class="sk-cube sk-cube4"></div>
                <div class="sk-cube sk-cube5"></div>
                <div class="sk-cube sk-cube6"></div>
                <div class="sk-cube sk-cube7"></div>
                <div class="sk-cube sk-cube8"></div>
                <div class="sk-cube sk-cube9"></div>
                </div>
                <div class="content-response">                
                @foreach($progres_aduan as $result)
                    @php
                        date_default_timezone_set('Asia/Jakarta');
                        $date_now = date('Y-m-d H:i:s', strtotime("+1 hours")); 
                        $now = new Datetime($date_now);
                        $created_date_response = new Datetime($result->updated_at);
                        $diffDate_response = $now->diff($created_date_response);
                        $keterangan_response = '';
                        if($diffDate->y > 0)
                        {
                            $keterangan_response = $diffDate_response->y.' years ago';
                        } else if($diffDate_response->m > 0)
                        {
                            $keterangan_response = $diffDate_response->m.' months ago';
                        } else if($diffDate_response->d > 0)
                        {
                            $keterangan_response = $diffDate_response->d.' days ago';
                        } else if($diffDate_response->h > 0)
                        {
                            $keterangan_response = $diffDate_response->h.' hours ago';
                        } else 
                        {
                            $keterangan_response = $diffDate_response->i.' minutes ago';
                        }
                    @endphp
                
                <div style="border: 1px solid #e5e5e5; border-radius: 4px; margin: 16px 0; padding: 10px">
                    <p>
                    <span class="c-badge {{ $result->pelapor == 'admin' ? 'c-badge__danger' : 'c-badge__success' }} ">{{ $result->pelapor == 'admin' ? 'Admin Prov Kalsel' : $aduan->nama }}</span><span style="display: inline; color: #707070; vertical-align: super"> . </span><span style="color: #707070;">{{ $keterangan_response }}</span>
                    </p>
                    <p style="text-align: justify">{{ $result->tanggapan }} </p>                    
                </div>                
                @endforeach                
                @if(count($progres_aduan) == 0)
                <div class="alert alert-primary alert-not-respon" role="alert" style="color: grey !important">
                    Belum ada respon atas laporan pengaduan ini. Terima kasih
                </div>
                @endif
                </div>
                <hr>
                <div class="row">
                    <div class="col-12">                
                        <textarea class="form-control" name="response_track" id="response_track" cols="30" rows="10"></textarea>
                        <button style="float:right" class="btn btn-primary mt-2 send_response_track">Kirim Respon</button>                
                    </div>                          
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js-page')
<script>
$(document).ready(function(){
    let base_url = `${window.location.origin + '/' + window.location.pathname.split('/')[1]}`,
        token = $('meta[name="_token"]').attr('content'),
        nama_temp = "<?= $aduan->nama ?>",
        ticket = "<?= last(request()->segments()) ?>";        
    $('.send_response_track').click(function(){
        $(this).blur();
        let data = $("#response_track").val().trim();
        if(data.length == 0)
        {
            Swal.fire({
                icon: 'warning',
                title: 'Warning!',
                html: '<p>Isian tidak boleh kosong. Terima kasih</p>'
            }).then(function(){
                $("#response_track").focus();
            })
        } else
        {
            Swal.fire({
                icon: 'question',
                title: 'Konfirmasi!',
                html: '<p>Apakah respon sudah benar dan siap dikirim ?</p>',
                showCancelButton: true,
                confirmButtonText: 'Ya, Kirim Respon',
                showLoaderOnConfirm: true,
                preConfirm: () => {
                    return new Promise((resolve, reject) => {
                        $.ajax({
                            url: base_url+'/admin/respon-admin',
                            dataType: 'json',
                            type: 'POST',
                            data: {_token: token, data: {respon: data, ticket: ticket}},
                            success: function(rtrn) {
                                resolve(rtrn);
                            },
                            error: function(err) {
                                reject(err.responseText);
                            }
                        })
                    }).then((suc) => {
                        console.log(suc.respon);
                        $('.content-response').hide();
                        $(".loader-square").show();
                        let list_response = '';
                        for(let i=0; i<suc.respon.length; i++)
                        {                            
                            list_response += `
                                <div style="border: 1px solid #e5e5e5; border-radius: 4px; margin: 16px 0; padding: 10px">
                                <p>
                                <span class="c-badge ${suc.respon[i].pelapor == 'admin' ? 'c-badge__danger' : 'c-badge__success' }">${suc.respon[i].pelapor == 'admin' ? 'Admin Prov Kalsel' : nama_temp}</span><span style="display: inline; color: #707070; vertical-align: super"> . </span><span style="color: #707070;">${suc.keyed[suc.respon[i].id]}</span>
                                </p>
                                    <p style="text-align: justify">${suc.respon[i].tanggapan}</p>                                    
                                </div>
                            `;
                        }
                        $('.content-response').html(list_response);
                        $('.content-response').show();
                        $('.loader-square').hide();
                         $("#response_track").val('');
                        return suc.result;
                    }).catch((err) => {
                        Swal.showValidationMessage(
                            `Request failed: ${err}`
                        );
                        console.log(err);
                    })
                }
            }).then(function(val){
                if(val.value)
                {
                    Swal.fire({
                        icon: 'success',
                        title: 'Sukses !!',
                        html: `<p style="font-size: medium">Berhasil mengirim respon</p>`
                    })
                }
            })
        }
    })
})
</script>
@endsection