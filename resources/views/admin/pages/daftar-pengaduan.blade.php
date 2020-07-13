@extends('admin.layout.layout')
@section('title') Daftar Laporan Pengaduan @endsection

@section('css-page')
<style>
    ul.pagination {
        justify-content: center !important;
    }
    span.badge {
        margin-left : 5px !important;
    }
    .media-heading a {
        color: #333;
    }

    .media-heading a:hover {
        text-decoration: underline;
    }
</style>
@endsection

@section('content')
<div class="row" style="display: none">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <ul class="breadcrumb breadcrumb-style">
            <li>
                <h4 class="page-title">Daftar Laporan Pengaduan</h4>
            </li>
        </ul>
    </div>
</div>

<div class="row" style="margin-top: 80px;">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
            <div class="header">                
                    <h3><strong>Daftar Laporan Pengaduan</strong></h3>
            </div>
            <div class="body">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation">
                        <a href="?state=opened" class="{{ ($state == 'opened' ? 'active show' : '')}}">
                            Belum Direspon <span class="badge bg-orange">{{isset($count_aduan['0']) ? $count_aduan['0'] : '0'}}</span>
                        </a>
                    </li>
                    <li role="presentation">
                        <a href="?state=closed" class="{{ ($state == 'closed' ? 'active show' : '')}}">
                            Sudah Direspon <span class="badge bg-teal">{{isset($count_aduan['1']) ? $count_aduan['1'] : '0'}}</span>
                        </a>
                    </li>                    
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active show">                        
                        @foreach($daftar_aduan as $result)
                            <div class="media">
                                <div class="media-left">
                                    <a href="./daftar-pengaduan/{{ $result->no_ticket }}">
                                        <img class="media-object" src="{{asset('public/admin/image/media.png')}}" alt=""
                                            width="64" height="64">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading"><a href="./daftar-pengaduan/{{ $result->no_ticket }}">{{$result->judul_pengaduan}} <span style="color: #707070; font-size: smaller;">#{{ $result->no_ticket }}</span></a></h4>
                                    <p style="margin-bottom: 0">
                                        {{ strlen($result->pesan_pengaduan) > 150 ? substr($result->pesan_pengaduan, 0, 150).' ...' : $result->pesan_pengaduan}}
                                    </p>
                                    <p>
                                        @php
                                            date_default_timezone_set('Asia/Jakarta');
                                            $date_now = date('Y-m-d H:i:s', strtotime("+1 hours")); 
                                            $now = new Datetime($date_now);
                                            $created_date = new Datetime($result->created_at);
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
                                        <small>Reported {{ $keterangan }} by <span style="font-weight: bold">{{ $result->nama }} </span> <span style="font-size: xx-small; border-radius:100px" class="badge col-red">{{$result->nama_kategori}}</span></small>
                                    </p>                                                                        
                                </div>
                            </div>                            
                        @endforeach
                        {{ $daftar_aduan->appends(['state' => $state])->links('pagination.default') }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- #END# Media Alignment -->
@endsection

@section('js-page')
<script>
$(document).ready(function(){
    console.log('ready');
})
</script>
@endsection