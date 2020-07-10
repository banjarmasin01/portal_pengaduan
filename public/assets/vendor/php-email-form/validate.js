/**
* PHP Email Form Validation - v2.0
* URL: https://bootstrapmade.com/php-email-form/
* Author: BootstrapMade.com
*/
!(function($) {
  "use strict";

  let base_url = `${window.location.origin + '/' + window.location.pathname.split('/')[1]}`,
      token = $('meta[name="_token"]').attr('content');

  $('form.php-email-form').submit(function(e) {
    e.preventDefault();
    
    var f = $(this).find('.form-group'),
      ferror = false,
      emailExp = /^[^\s()<>@,;:\/]+@\w[\w\.-]+\.[a-z]{2,}$/i;

    f.children('input').each(function() { // run all inputs
     
      var i = $(this); // current input
      var rule = i.attr('data-rule');

      if (rule !== undefined) {
        var ierror = false; // error flag for current input
        var pos = rule.indexOf(':', 0);
        if (pos >= 0) {
          var exp = rule.substr(pos + 1, rule.length);
          rule = rule.substr(0, pos);
        } else {
          rule = rule.substr(pos + 1, rule.length);
        }

        switch (rule) {
          case 'required':
            if (i.val().trim() === '') {
              ferror = ierror = true;
            }
            break;

          case 'minlen':
            if (i.val().trim().length < parseInt(exp)) {
              ferror = ierror = true;
            }
            break;

          case 'email':
            if (!emailExp.test(i.val())) {
              ferror = ierror = true;
            }
            break;

          case 'checked':
            if (! i.is(':checked')) {
              ferror = ierror = true;
            }
            break;

          case 'regexp':
            exp = new RegExp(exp);
            if (!exp.test(i.val())) {
              ferror = ierror = true;
            }
            break;                  
        }
        i.next('.validate').html((ierror ? (i.attr('data-msg') !== undefined ? i.attr('data-msg') : 'wrong Input') : '')).show('blind');
      }
    });

    f.children('select').each(function(){      
      var i = $(this);
      var rule = i.attr('data-rule');
      if(rule != undefined) {
        var ierror = false;
        var pos = rule.indexOf(':', 0);
        if (pos >= 0) {
          var exp = rule.substr(pos + 1, rule.length);
          rule = rule.substr(0, pos);
        } else {
          rule = rule.substr(pos + 1, rule.length);
        }
        switch (rule) {
          case 'select':
            if (i.val() == '-') {
              ferror = ierror = true;
            }
            break;
        }
        i.next('.validate').html((ierror ? (i.attr('data-msg') !== undefined ? i.attr('data-msg') : 'wrong Input') : '')).show('blind');
      }
    });

    f.children('textarea').each(function() { // run all inputs

      var i = $(this); // current input
      var rule = i.attr('data-rule');

      if (rule !== undefined) {
        var ierror = false; // error flag for current input
        var pos = rule.indexOf(':', 0);
        if (pos >= 0) {
          var exp = rule.substr(pos + 1, rule.length);
          rule = rule.substr(0, pos);
        } else {
          rule = rule.substr(pos + 1, rule.length);
        }

        switch (rule) {
          case 'required':
            if (i.val().trim() === '') {
              ferror = ierror = true;
            }
            break;

          case 'minlen':
            if (i.val().length < parseInt(exp)) {
              ferror = ierror = true;
            }
            break;
        }
        i.next('.validate').html((ierror ? (i.attr('data-msg') != undefined ? i.attr('data-msg') : 'wrong Input') : '')).show('blind');
      }
    });
    
    if (ferror) return false;

    
    

    Swal.fire({
      icon: 'question',
      title: 'Konfirmasi',
      html: `Apakah isian laporan sudah benar dan siap dikirimkan ?`,
      showCancelButton: true,
      confirmButtonText: 'Ya, Kirim Laporan',
      showLoaderOnConfirm: true,
      preConfirm: () => {
        return new Promise((resolve, reject) => {
          $.ajax({
            url: base_url+'/save-report',
            dataType: 'json',
            type: 'POST',
            data: {_token: token, data: $('form').serialize()},
            success: function(data) {
              resolve(data);
            },
            error: function(err) {
              reject(err.responseText);
            }
          })
        }).then((suc) => {
          clearAduan();          
          return suc;
        }).catch((err) => {
          Swal.showValidationMessage(
            `Request failed: ${err}`
          );
        })
      },
      allowOutsideClick: () => !Swal.isLoading()
    }).then(function(val){      
      if(val.value)
      {        
        Swal.fire({
          icon: 'success',
          title: 'Sukses !!',
          html: `<p style="font-size: medium">Laporan pengaduan berhasil dikirim. <br/><strong>${val.value.ticket}</strong> merupakan <strong>Nomor Tiket Aduan</strong> anda. 
                <br/>Silahkan simpan dan gunakan <strong>Nomor Tiket Aduan</strong> tersebut untuk melakukan tracking progres laporan aduan anda. <br/>Terima kasih</p>`
        }).then(function(){
          $('html, body').animate({ scrollTop: $("#tracking_aduan").offset().top - 50 }, 'slow');
          // window.location.href = "#tracking_aduan";
        })
      }
    })
    
    return true;
  });

  function clearAduan()
  {
    $("#nama_pelapor, #email_pelapor, #no_telp, #alamat_pelapor, #judul_laporan, #isi_laporan").val('');
    $("#kategori_laporan").val('-');
  }

  $("#nomor_aduan").on('keyup', function (e) {
    if (e.which == 13) {
      cariAduan();
    }
  });

  $(".cari-aduan").click(function () {
    $(this).blur();
    cariAduan();
  });
  let no_ticket_aduan_temp = '',
      name_pelapor_temp = '';
  function cariAduan() {
    let nomor_aduan = $("#nomor_aduan").val().trim();
    if (nomor_aduan.length == 0) {
      Swal.fire({
        icon: 'warning',
        title: 'Warning!',
        html: '<p>Isian nomor aduan harus terisi. Terima kasih</p>'
      }).then(function () {
        $("#nomor_aduan").focus();
      })
    } else {      
      $('.loader-square').show();
      $('.progres-pengaduan').hide();
      return new Promise((resolve, reject) => {
        $.ajax({
          url: base_url+'/get-aduan',
          dataType: 'json',
          type: 'POST',
          data: {_token: token, no_aduan: nomor_aduan},
          success: function (data) {
            resolve(data);
          },
          error: function (err) {
            reject(err.responseText);
          }
        })
      }).then((suc) => {
        $('.loader-square').hide();
        if(suc.aduan == null)
        {
          Swal.fire({
            icon: 'warning',
            title: 'Ooppss',
            html: `<p>Nomor Tiket Aduan <strong>${nomor_aduan}</strong> tidak ditemukan. Terima kasih</p>`
          })
        } else 
        {
          no_ticket_aduan_temp = nomor_aduan;
          name_pelapor_temp = suc.aduan.nama;
          $('.s-judul-aduan').html(suc.aduan.judul_pengaduan);
          $('.s-pesan-aduan').html(suc.aduan.pesan_pengaduan);
          $('.s-created-aduan').html(suc.aduan.created_at);
          if(suc.progres_aduan.length == 0)
          {
            $('.alert-not-respon').show();
            $('.comments-list-prnt').hide();
          } else 
          {
            let list_comment = ``;
            for(let i=0; i<suc.progres_aduan.length; i++)
            {
              list_comment += `
                <li>
                  <div class="row">
                    <div class="col-1" style="flex: 0 0 3%; max-width: 3%; display: none"> <!-- like atau dislike -->
                      <i style="color:red;" class="fa fa-heart love-comment-icon loved"></i>
                      <i class="fa fa-heart-o love-comment-icon not-loved"></i>
                    </div>
                    <div class="col-11" style="flex: 0 0 95%; max-width: 95%;"> <!-- komen -->
                      <p style="text-align: justify; margin-bottom: 0px; font-size: smaller">${suc.progres_aduan[i].tanggapan}</p>
                      <p style="float:right; margin-bottom: 0px">${(suc.progres_aduan[i].pelapor == 'admin' ? '<span class="badge badge-danger">Admin BPS Kalsel</span>' : '<span class="badge badge-warning">'+suc.aduan.nama+'</span>')} <span style="font-size: small; color: grey; display: block">Direspon ${suc.progres_aduan[i].updated_at}</span></p>
                    </div>
                  </div>                
                </li>
              `;
            }
            $('.comments-list').html(list_comment);
            $('.alert-not-respon').hide();            
            $('.comments-list-prnt').show();            
          }
          $(".progres-pengaduan").show();
          $('html, body').animate({ scrollTop: $(".progres-pengaduan").offset().top - 100 }, 'slow');
        }                
        // console.log(suc.aduan, suc.progres_aduan);
      }).catch((err) => {
        Swal.fire({
          icon: 'error',
          title: 'Error!',
          html: '<p>Terdapat kesalahan pada jaringan anda. Silahkan Refresh halaman ini. Terima kasih</p>'
        })  
        // console.log(err);
      })
    }
  } // end of cari admin function

  $('.send_response_track').click(function(){
    $(this).blur();
    let response = $("#response_track").val().trim();
    if(response.length == 0)
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
      let data_send = {
        'respon' : response,
        'no_ticket' : no_ticket_aduan_temp
      };
      Swal.fire({
        icon: 'question',
        title: 'Konfirmasi',
        html: `Apakah isian respon sudah benar dan siap dikirimkan ?`,
        showCancelButton: true,
        confirmButtonText: 'Ya, Kirim Respon',
        showLoaderOnConfirm: true,
        preConfirm: () => {
          return new Promise((resolve, reject) => {
            $.ajax({
              url: base_url + '/save-response',
              dataType: 'json',
              type: 'POST',
              data: { _token: token, data: data_send },
              success: function (data) {
                resolve(data);
              },
              error: function (err) {
                reject(err.responseText);
              }
            })
          }).then((suc) => { 
            let loader = `
              <div class="sk-cube-grid">
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
            `;
            $('.comments-list').html(loader);
            $("#response_track").val('');
            return suc;
          }).catch((err) => {
            Swal.showValidationMessage(
              `Request failed: ${err}`
            );
          })
        },
        allowOutsideClick: () => !Swal.isLoading()
      }).then(function (val) {
        if (val.value) {
          Swal.fire({
            icon: 'success',
            title: 'Sukses !!',
            html: `<p style="font-size: medium">Respon pengaduan berhasil dikirim. Terima kasih</p>`
          }).then(function(){
            let list_comment = ``;
            for (let i = 0; i < val.value.respon.length; i++) {
              list_comment += `
                <li>
                  <div class="row">
                    <div class="col-1" style="flex: 0 0 3%; max-width: 3%; display: none"> <!-- like atau dislike -->
                      <i style="color:red;" class="fa fa-heart love-comment-icon loved"></i>
                      <i class="fa fa-heart-o love-comment-icon not-loved"></i>
                    </div>
                    <div class="col-11" style="flex: 0 0 95%; max-width: 95%;"> <!-- komen -->
                      <p style="text-align: justify; margin-bottom: 0px; font-size: smaller">${val.value.respon[i].tanggapan}</p>
                      <p style="float:right; margin-bottom: 0px">${(val.value.respon[i].pelapor == 'admin' ? '<span class="badge badge-danger">Admin BPS Kalsel</span>' : '<span class="badge badge-warning">' + name_pelapor_temp + '</span>')} <span style="font-size: small; color: grey; display: block">Direspon ${val.value.respon[i].updated_at}</span></p>
                    </div>
                  </div>                
                </li>
              `;
            }
            $('.comments-list').html(list_comment);
          })
        }
      })
    }
  });

})(jQuery);
