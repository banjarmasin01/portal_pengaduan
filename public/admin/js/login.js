/**
* PHP Email Form Validation - v2.0
* URL: https://bootstrapmade.com/php-email-form/
* Author: BootstrapMade.com
*/
!(function ($) {
    "use strict";

    let base_url = `${window.location.origin + '/' + window.location.pathname.split('/')[1]}`,
        token = $('meta[name="_token"]').attr('content'),
        loader = `            
                <div class="spinner">
                <div class="rect1"></div>
                <div class="rect2"></div>
                <div class="rect3"></div>
                <div class="rect4"></div>
                <div class="rect5"></div>
                </div>
        `,
        btn_login = `<button class="login100-form-btn">
							Login
                        </button>`;

    $(".input100").each(function () {
        $(this).on("blur", function () {
            if (
                $(this)
                    .val()
                    .trim() != ""
            ) {
                $(this).addClass("has-val");
            } else {
                $(this).removeClass("has-val");
            }
        });
    });

    $('form.validate-login').submit(function(e){
        e.preventDefault();
        let username = $("#username").val().trim(),
            password = $("#password").val().trim();
        if(username.length == 0 || password.length == 0)
        {
            Swal.fire({
                icon: 'warning',
                title: 'Warning!',
                html: '<p>Semua isian harus terisi. Terima kasih</p>'
            })
        } else 
        {
            $('.login-btn-ctn').html(loader);
            let data_send = {
                username: username,
                password: password
            };
            return new Promise((resolve, reject) => {
                $.ajax({
                    url: base_url+'/login',
                    dataType: 'json',
                    type: 'POST',
                    data: {_token: token, data: data_send},
                    success: function(data) {
                        resolve(data);
                    },
                    error: function(err) {
                        reject(err.responseText);
                    }
                })
            }).then((suc) => {
                if(suc.result == 'sukses')
                {
                    Swal.fire({
                        icon: 'success',
                        title: 'Sukses!',
                        html: '<p>Selamat datang di Laporan Pengaduan BPS Prov Kalsel </p>',
                        showConfirmButton: false
                    });
                    window.location.href = base_url + "/admin/home";
                } else 
                {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        html: '<p>Username / Password anda salah </p>',                        
                    }).then(function(){
                        $('.login-btn-ctn').html(btn_login);
                    });
                }
                
            }).catch((err) => {
                Swal.fire({
                    icon: 'error',
                    title: 'Error!',
                    html: '<p>Terdapat kesalahan pada jaringan anda. Refresh halaman ini. Terima kasih</p>'
                }).then(function(){
                    $('.login-btn-ctn').html(btn_login);
                });
            })
        }
    });

})(jQuery);
