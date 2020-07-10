@extends('admin.layout.layout')
@section('title') Home @endsection

@section('css-page')
<style>
</style>
@endsection

@section('content')

<div class="row" style="margin-top:50px">
    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
        <div class="card infobox-5">
            <div class="card-body">
                <div class="clearfix">
                    <div class="float-left card-icon">
                        <i class="material-icons col-green">receipt</i>
                    </div>
                    <div class="float-right">
                        <p class="text-right">Laporan Pengaduan</p>
                        <div class="col-green">
                            <h3 class="text-right mb-0">{{$pengaduan_today->count()}}</h3>
                        </div>
                    </div>
                </div>
                <p class="text-muted mt-3 mb-0">Total pengaduan hari ini</p>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
        <div class="card infobox-5">
            <div class="card-body">
                <div class="clearfix">
                    <div class="float-left card-icon">
                        <i class="material-icons col-orange">receipt</i>
                    </div>
                    <div class="float-right">
                        <p class="text-right">Laporan Pengaduan</p>
                        <div class="col-orange">
                            <h3 class="text-right mb-0">{{$pengaduan_month->count()}}</h3>
                        </div>
                    </div>
                </div>
                <p class="text-muted mt-3 mb-0">Total pengaduan bulan ini</p>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
        <div class="card infobox-5">
            <div class="card-body">
                <div class="clearfix">
                    <div class="float-left card-icon">
                        <i class="material-icons col-blue">receipt</i>
                    </div>
                    <div class="float-right">
                        <p class="text-right">Laporan Pengaduan</p>
                        <div class="col-blue">
                            <h3 class="text-right mb-0">{{$pengaduan_total->count()}}</h3>
                        </div>
                    </div>
                </div>
                <p class="text-muted mt-3 mb-0">Total Pengaduan keseluruhan</p>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
        <div class="card infobox-5">
            <div class="card-body">
                <div class="clearfix">
                    <div class="float-left card-icon">
                        <i class="material-icons col-red">receipt</i>
                    </div>
                    <div class="float-right">
                        <p class="text-right">Laporan Pengaduan</p>
                        <div class="col-red">
                            <h3 class="text-right mb-0">{{$pengaduan_norespon->count()}}</h3>
                        </div>
                    </div>
                </div>
                <p class="text-muted mt-3 mb-0">Pengaduan belum direspon</p>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="header">
                <h2>Laporan Pengaduan Tahun {{ date('Y') }}</h2>                    
            </div>
            <div class="body">
                <div class="recent-report__chart">
                    <canvas id="bar-chart"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js-page')
<script src="{{ asset('public/admin/js/chart.min.js') }}"></script>
<!-- <script src="{{ asset('public/admin/js/chartjs.js') }}"></script> -->
<script>
$(document).ready(function(){
    let data = '<?php echo json_encode($pengaduan_perbulan) ?>';
    
try {
  //bar chart
  var ctx = document.getElementById("bar-chart");
  if (ctx) {
    ctx.height = 150;
    var myChart = new Chart(ctx, {
      type: "bar",
      defaultFontFamily: "Karla",
      data: {
        labels: [
          "Januari",
          "Februari",
          "Maret",
          "April",
          "Mei",
          "Juni",
          "Juli",
          "Agustus",
          "September",
          "Oktober",
          "November",
          "Desember"
        ],
        datasets: [
          {
            label: "Laporan Pengaduan",
            data: Object.values(JSON.parse(data)),
            borderColor: "rgba(0, 123, 255, 0.9)",
            borderWidth: "0",
            backgroundColor: "rgba(0, 123, 255, 0.5)",
            fontFamily: "Karla"
          }         
        ]
      },
      options: {
        legend: {
          position: "top",
          labels: {
            fontFamily: "Karla"
          }
        },
        scales: {
          xAxes: [
            {
              ticks: {
                fontFamily: "Karla",
                fontColor: "#9aa0ac" // Font Color
              }
            }
          ],
          yAxes: [
            {
              ticks: {
                beginAtZero: true,
                fontFamily: "Poppins",
                fontColor: "#9aa0ac" // Font Color
              }
            }
          ]
        }
      }
    });
  }
} catch (error) {
  console.log(error);
}
})
</script>
@endsection