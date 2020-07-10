<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta name="_token" content="{{ csrf_token() }}">
	<title>Login : Laporan Pengaduan BPS Prov Kalsel</title>		
	<link href="{{asset('public/admin/css/app.min.css')}}" rel="stylesheet">	
	<link href="{{asset('public/admin/css/style.css')}}" rel="stylesheet" />
    <link href="{{asset('public/admin/css/login.css')}}" rel="stylesheet" />
    <style>
        .spinner {
  margin: 10px auto;
  width: 50px;
  height: 40px;
  text-align: center;
  font-size: 10px;
}

.spinner > div {
  background-color: #333;
  height: 100%;
  width: 6px;
  display: inline-block;
  
  -webkit-animation: sk-stretchdelay 1.2s infinite ease-in-out;
  animation: sk-stretchdelay 1.2s infinite ease-in-out;
}

.spinner .rect2 {
  -webkit-animation-delay: -1.1s;
  animation-delay: -1.1s;
}

.spinner .rect3 {
  -webkit-animation-delay: -1.0s;
  animation-delay: -1.0s;
}

.spinner .rect4 {
  -webkit-animation-delay: -0.9s;
  animation-delay: -0.9s;
}

.spinner .rect5 {
  -webkit-animation-delay: -0.8s;
  animation-delay: -0.8s;
}

@-webkit-keyframes sk-stretchdelay {
  0%, 40%, 100% { -webkit-transform: scaleY(0.4) }  
  20% { -webkit-transform: scaleY(1.0) }
}

@keyframes sk-stretchdelay {
  0%, 40%, 100% { 
    transform: scaleY(0.4);
    -webkit-transform: scaleY(0.4);
  }  20% { 
    transform: scaleY(1.0);
    -webkit-transform: scaleY(1.0);
  }
}
    </style>
</head>

<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-login" action="">
					<span class="login100-form-title p-b-45">
						Login
					</span>


					<div class="wrap-input100">
						<input class="input100" type="text" name="username" id="username">
						<span class="focus-input100"></span>
						<span class="label-input100">Username</span>
					</div>


					<div class="wrap-input100">
						<input class="input100" type="password" name="password" id="password">
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>

					<div class="flex-sb-m w-full p-t-15 p-b-20">
						<div class="form-check">
							<label class="form-check-label">
								<input class="form-check-input" type="checkbox" value=""> Remember me
								<span class="form-check-sign">
									<span class="check"></span>
								</span>
							</label>
                        </div>
					</div>

					<div class="container-login100-form-btn login-btn-ctn">
						<button class="login100-form-btn">
							Login
                        </button>                    
					</div>
				</form>

				<div class="login100-more" style="background-image: url('./public/admin/image/bg-01.png');">
				</div>
			</div>
		</div>
	</div>

	<!-- Plugins Js -->
    <script src="{{asset('public/admin/js/app.min.js')}}"></script>
    <script src="{{asset('public/assets/vendor/jquery/jquery.min.js')}}"></script>	
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	<script src="{{asset('public/admin/js/login.js')}}"></script>	
</body>

</html>