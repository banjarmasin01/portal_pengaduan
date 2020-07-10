
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta content="width=device-width, initial-scale=1" name="viewport" />
	<title>{{config('app.name')}}</title>	
	<link href="{{asset('public/admin/css/app.min.css')}}" rel="stylesheet">	
	<link href="{{asset('public/admin/css/style.css')}}" rel="stylesheet" />    
    <link href="{{asset('public/admin/css/login.css')}}" rel="stylesheet" />
    <style>
        a:hover{
            background-color: red !important;            
            color: white !important;
        }
    </style>
</head>

<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form">
					<span class="error-header p-b-45">
						404
					</span>
					<span class="error-subheader p-b-5">
						Looks Like You're Lost
					</span>
					<span class="error-subheader2 p-b-5">
						The Page You Are Looking For Not Available!
					</span>

					<div class="container-login100-form-btn p-t-30	">
						<a class="login100-form-btn" href="{{url('admin')}}">
							Go To Home Page
                        </a>
					</div>
				</form>

				<div class="login100-more" style="background-image: url('/{{config('app.link')}}/public/admin/image/bg-03.png');">
				</div>
			</div>
		</div>
	</div>
</body>

</html>