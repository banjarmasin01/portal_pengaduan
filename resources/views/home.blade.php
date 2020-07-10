<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Layanan Pengaduan : BPS Provinsi Kalimantan Selatan</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">
  <meta name="_token" content="{{ csrf_token() }}">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{{asset('public/assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  <link href="{{asset('public/assets/vendor/icofont/icofont.min.css')}}" rel="stylesheet">
  <link href="{{asset('public/assets/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
  <link href="{{asset('public/assets/vendor/remixicon/remixicon.css')}}" rel="stylesheet">
  <link href="{{asset('public/assets/vendor/venobox/venobox.css')}}" rel="stylesheet">
  <link href="{{asset('public/assets/vendor/owl.carousel/assets/owl.carousel.min.css')}}" rel="stylesheet">
  <link href="{{asset('public/assets/vendor/aos/aos.css')}}" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Template Main CSS File -->
  <link href="{{asset('public/assets/css/style.css')}}" rel="stylesheet">
  <style>
    #nomor_aduan:focus {
      border-color: #47b2e4 !important;
      box-shadow: none;
    }
    #kategori_laporan:focus {
      border-color: #47b2e4 !important;
      box-shadow: none;
    }
    #kategori_laporan {
      cursor: pointer;
    }

    ul.comments-list {
      list-style-type: none;      
    }

    .comments-list li {
      border-top: 2px solid #eff0f1;
      /* border-bottom: 1px solid #eff0f1; */
      padding: 10px 0px 10px 30px;
    }

    i.love-comment-icon {
      cursor: pointer;
    }

    .progres-pengaduan {
        border: 1px solid white;
        padding: 10px;
        background-color: white;    
        box-shadow: 0 0 24px 0 rgba(0, 0, 0, 0.12);
    }

    /* spinkit css */
    .sk-cube-grid {
      width: 40px;
      height: 40px;
      margin: 100px auto;
    }

    .sk-cube-grid .sk-cube {
      width: 33%;
      height: 33%;
      background-color: #333;
      float: left;
      -webkit-animation: sk-cubeGridScaleDelay 1.3s infinite ease-in-out;
              animation: sk-cubeGridScaleDelay 1.3s infinite ease-in-out; 
    }
    .sk-cube-grid .sk-cube1 {
      -webkit-animation-delay: 0.2s;
              animation-delay: 0.2s; }
    .sk-cube-grid .sk-cube2 {
      -webkit-animation-delay: 0.3s;
              animation-delay: 0.3s; }
    .sk-cube-grid .sk-cube3 {
      -webkit-animation-delay: 0.4s;
              animation-delay: 0.4s; }
    .sk-cube-grid .sk-cube4 {
      -webkit-animation-delay: 0.1s;
              animation-delay: 0.1s; }
    .sk-cube-grid .sk-cube5 {
      -webkit-animation-delay: 0.2s;
              animation-delay: 0.2s; }
    .sk-cube-grid .sk-cube6 {
      -webkit-animation-delay: 0.3s;
              animation-delay: 0.3s; }
    .sk-cube-grid .sk-cube7 {
      -webkit-animation-delay: 0s;
              animation-delay: 0s; }
    .sk-cube-grid .sk-cube8 {
      -webkit-animation-delay: 0.1s;
              animation-delay: 0.1s; }
    .sk-cube-grid .sk-cube9 {
      -webkit-animation-delay: 0.2s;
              animation-delay: 0.2s; }

    @-webkit-keyframes sk-cubeGridScaleDelay {
      0%, 70%, 100% {
        -webkit-transform: scale3D(1, 1, 1);
                transform: scale3D(1, 1, 1);
      } 35% {
        -webkit-transform: scale3D(0, 0, 1);
                transform: scale3D(0, 0, 1); 
      }
    }

    @keyframes sk-cubeGridScaleDelay {
      0%, 70%, 100% {
        -webkit-transform: scale3D(1, 1, 1);
                transform: scale3D(1, 1, 1);
      } 35% {
        -webkit-transform: scale3D(0, 0, 1);
                transform: scale3D(0, 0, 1);
      } 
    }
    /* spinkit css */
    
  </style>
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="./">Pengaduan</a></h1>
      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="#hero">Home</a></li>
          <li><a href="#buat_aduan">Buat Aduan</a></li>
          <li><a href="#tracking_aduan">Tracking Aduan</a></li>
          <li><a href="./login">Login</a></li>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center" style="height: 100vh;">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
          <h1>Layanan Pengaduan BPS Provinsi Kalimantan Selatan</h1>
          <h2>Sampaikan laporan Anda kepada kami secara langsung</h2>
          <div class="d-lg-flex">
            <a href="#buat_aduan" class="btn-get-started scrollto">Buat Aduan</a>            
          </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
          <img src="{{asset('public/assets/img/hero-img.png')}}" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  <main id="main">

    <section id="buat_aduan" class="contact">
      <div class="container" data-aos="fade-up">    
        <div class="section-title">
          <h2>Buat Aduan</h2>
          <p>Silahkan lengkapi isian di bawah ini untuk menyampaikan laporan pengaduan kepada kami. Terima kasih.</p>
        </div>
    
        <div class="row">               
          <div class="col-lg-12 mt-5 mt-lg-0 d-flex align-items-stretch">
            <form action="" method="post" role="form" class="php-email-form">
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="nama_pelapor">Nama Pelapor</label>
                  <input type="text" name="nama_pelapor" class="form-control" id="nama_pelapor" data-rule="required"
                    data-msg="Isian nama tidak boleh kosong" />
                  <div class="validate"></div>
                </div>
                <div class="form-group col-md-6">
                  <label for="email_pelapor">Email</label>
                  <input type="email" class="form-control" name="email_pelapor" id="email_pelapor" data-rule="email"
                    data-msg="Isikan dengan format email yang benar" />
                  <div class="validate"></div>
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="no_telp">Nomor Telepon</label>
                  <input type="text" name="no_telp" class="form-control" id="no_telp" data-rule="minlen:10"
                    data-msg="Isikan dengan format nomor hp yang benar" />
                  <div class="validate"></div>
                </div>
                <div class="form-group col-md-6">
                  <label for="alamat_pelapor">Alamat Domisili</label>
                  <input type="text" class="form-control" name="alamat_pelapor" id="alamat_pelapor" data-rule="required"
                    data-msg="Isian tidak boleh kosong" />
                  <div class="validate"></div>
                </div>
              </div>
              <div class="form-group">
                <label for="judul_laporan">Judul Laporan</label>
                <input type="text" class="form-control" name="judul_laporan" id="judul_laporan" data-rule="required"
                  data-msg="Isian tidak boleh kosong" />
                <div class="validate"></div>
              </div>
              <div class="form-group">
                <label for="kategori_laporan">Kategori</label>
                <select name="kategori_laporan" class="form-control" id="kategori_laporan" data-rule="select" data-msg="Pilihan kategori harus terisi">
                    <option value="-">-- Pilih Kategori --</option>
                    @foreach($option_kategori as $data)
                      <option value="{{ $data->id }}">{{ $data->kategori }}</option>
                    @endforeach
                </select>
                <div class="validate"></div>
              </div>
              <div class="form-group">
                <label for="isi_laporan">Isi Laporan</label>
                <textarea class="form-control" id="isi_laporan" name="isi_laporan" rows="10" data-rule="required"
                  data-msg="Isian tidak boleh kosong"></textarea>
                <div class="validate"></div>
              </div>              
              <div class="text-center"><button type="submit">Kirim Laporan!</button></div>
            </form>
          </div>
    
        </div>
    
      </div>
    </section><!-- End Aduan Section -->


    <!-- ======= Tracking Section ======= -->
    <section id="tracking_aduan" class="services section-bg">
      <div class="container" data-aos="fade-up">
    
        <div class="section-title">
          <h2>Tracking Aduan</h2>
          <p>Silahkan cari progres laporan aduan anda dengan memasukan <strong>Nomor Tiket Aduan</strong></p>
        </div>
    
        <div class="row">
          <div class="col-lg-12 mt-lg-0 d-flex align-items-stretch">
            <input id="nomor_aduan" type="text" class="form-control" placeholder="Masukan nomor tiket aduan anda">            
          </div>
          <div class="col-lg-12 mt-2 d-flex align-items-stretch">
            <button style="margin: 0px auto; padding: 5px 20px;" class="btn btn-sm btn-primary cari-aduan">Cari</button>
            
          </div>
        </div>

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
        
        <div class="row progres-pengaduan mt-4" style="display: none">
          <div class="col-12">
            <h3 class="s-judul-aduan"></h3>
            <p style="margin-bottom:0px;" class="s-pesan-aduan"></p>
            <small><p class="s-created-aduan"></p></small>
            <div class="alert alert-primary alert-not-respon" role="alert"> <!-- kalau misalkan belum ada respon buat laporan pengaduan dari user -->
              Belum ada respon atas laporan pengaduan anda. Terima kasih
            </div>
            <div class="comments-list-prnt">
              <ul class="comments-list">              
              </ul>              
              <div class="row">
                <div class="col-12" style="padding-left: 60px;">                
                    <textarea class="form-control" name="response_track" id="response_track" cols="30" rows="10"></textarea>
                    <button style="float:right" class="btn btn-primary mt-2 send_response_track">Kirim Respon</button>                
                </div>                          
              </div>
            </div>                        
          </div>
        </div>    
      </div>
    </section><!-- End Tracking Section -->    

    <!-- ======= Cta Section ======= -->
    <section id="cta" class="cta">
      <div class="container" data-aos="zoom-in">

        <div class="row">
          <div class="col-lg-9 text-center text-lg-left">
            <h3>Call To Action</h3>
            <p> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          </div>
          <div class="col-lg-3 cta-btn-container text-center">
            <a class="cta-btn align-middle" href="#">Call To Action</a>
          </div>
        </div>

      </div>
    </section><!-- End Cta Section -->

    <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="faq" class="faq section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Frequently Asked Questions</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="faq-list">
          <ul>
            <li data-aos="fade-up" data-aos-delay="100">
              <i class="bx bx-help-circle icon-help"></i> <a data-toggle="collapse" class="collapse" href="#faq-list-1">Non consectetur a erat nam at lectus urna duis? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-1" class="collapse show" data-parent=".faq-list">
                <p>
                  Feugiat pretium nibh ipsum consequat. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non.
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="200">
              <i class="bx bx-help-circle icon-help"></i> <a data-toggle="collapse" href="#faq-list-2" class="collapsed">Feugiat scelerisque varius morbi enim nunc? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-2" class="collapse" data-parent=".faq-list">
                <p>
                  Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="300">
              <i class="bx bx-help-circle icon-help"></i> <a data-toggle="collapse" href="#faq-list-3" class="collapsed">Dolor sit amet consectetur adipiscing elit? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-3" class="collapse" data-parent=".faq-list">
                <p>
                  Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus. Urna molestie at elementum eu facilisis sed odio morbi quis
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="400">
              <i class="bx bx-help-circle icon-help"></i> <a data-toggle="collapse" href="#faq-list-4" class="collapsed">Tempus quam pellentesque nec nam aliquam sem et tortor consequat? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-4" class="collapse" data-parent=".faq-list">
                <p>
                  Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in.
                </p>
              </div>
            </li>

            <li data-aos="fade-up" data-aos-delay="500">
              <i class="bx bx-help-circle icon-help"></i> <a data-toggle="collapse" href="#faq-list-5" class="collapsed">Tortor vitae purus faucibus ornare. Varius vel pharetra vel turpis nunc eget lorem dolor? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
              <div id="faq-list-5" class="collapse" data-parent=".faq-list">
                <p>
                  Laoreet sit amet cursus sit amet dictum sit amet justo. Mauris vitae ultricies leo integer malesuada nunc vel. Tincidunt eget nullam non nisi est sit amet. Turpis nunc eget lorem dolor sed. Ut venenatis tellus in metus vulputate eu scelerisque.
                </p>
              </div>
            </li>

          </ul>
        </div>

      </div>
    </section><!-- End Frequently Asked Questions Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 footer-contact">
            <h3>BPS Provinsi Kalimantan Selatan</h3>
            <p>
              Jl. Soekarno Hatta/Trikora No 7<br>
              Banjarbaru, Kalimantan Selatan<br>
              Indonesia <br><br>
              <strong>Telepon:</strong> +62 511 6749001<br>
              <strong>Email:</strong> bps6300@bps.go.id<br>
            </p>
          </div>

          <div class="col-lg-4 col-md-6 footer-links">
            <h4>Tautan BPS</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="https://kalsel.bps.go.id">Website BPS</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="https://sp2010.bps.go.id">Hasil Sensus Penduduk</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="https://st2013.bps.go.id">Hasil Sensus Pertanian</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="https://se2016.bps.go.id">Hasil Sensus Ekonomi</a></li>              
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-links">
            <h4>Sosial Media</h4>
            <p>Dapatkan info-info menarik lainnya melalui laman sosial media kami berikut</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>BPS Prov Kalimantan Selatan</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>
  <div id="preloader"></div>

  <!-- Vendor JS Files -->

  <script src="{{asset('public/assets/vendor/jquery/jquery.min.js')}}"></script>
  <script src="{{asset('public/assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
  <script src="{{asset('public/assets/vendor/jquery.easing/jquery.easing.min.js')}}"></script> 
  <script src="{{asset('public/assets/vendor/waypoints/jquery.waypoints.min.js')}}"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
  <script src="{{asset('public/assets/vendor/php-email-form/validate.js')}}"></script>
  <script src="{{asset('public/assets/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
  <script src="{{asset('public/assets/vendor/venobox/venobox.min.js')}}"></script>
  <script src="{{asset('public/assets/vendor/owl.carousel/owl.carousel.min.js')}}"></script>
  <script src="{{asset('public/assets/vendor/aos/aos.js')}}"></script>

  <!-- Template Main JS File -->
  <script src="{{asset('public/assets/js/main.js')}}"></script>
  <script>
    $(".love-comment-icon").hover(
      function() {
        $( this ).append( $( "<span> ***</span>" ) );
      }, function () {
        $( this ).find( "span" ).last().remove();
      }
    )    
  </script>

</body>

</html>