<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>ĐH Xây Dựng</title>
	<!-- Latest compiled and minified CSS & JS -->
	<!-- Latest compiled and minified CSS & JS -->

	<script src="https://code.jquery.com/jquery.js"></script>
	<link rel="stylesheet" href="http://www.cdio.nuce.edu.vn/theme/default/css/bootstrap.css">
	<link rel="stylesheet" href="http://www.cdio.nuce.edu.vn/theme/default/js/jquery-1.10.2.min.js">
	<link rel="stylesheet" href="http://www.cdio.nuce.edu.vn/theme/default/js/bootstrap.min.js">
	<!-- Latest compiled and minified CSS & JS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<script src="//code.jquery.com/jquery.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

	<!-- Font Awesome -->
	<link href="<?=base_url('assets/vendors')?>/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- NProgress -->
	<link href="<?=base_url('assets')?>/swal/sweetalert.css" rel="stylesheet">
	<link rel="stylesheet" href="https://sciactive.github.io/pnotify/src/pnotify.brighttheme.css">
	<script src="https://cdn.jsdelivr.net/npm/vue-resource@1.3.4"></script>
	<link href="<?=base_url('assets')?>/build/css/style.css" rel="stylesheet">
	<link href="<?=base_url('assets')?>/build/css/StyleSheet.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/vue"></script>
	<script src="//cdn.jsdelivr.net/npm/sortablejs@1.7.0/Sortable.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/Vue.Draggable/2.15.0/vuedraggable.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue-resource@1.3.4"></script>
	<!-- <link rel="stylesheet" href="http://www.cdio.nuce.edu.vn/theme/default/css/StyleSheet.css"> -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<style>

		.mySidenav ul li a{
			font-size: 10px;
		}
		nav{
			min-height: 40px!important;
			background: #0F297E!important;
		}
		.navbar{
			margin-bottom: 0px!important;
			border-radius: 0px!important;
		}
		.navbar-nav>ul>li>a{
			padding-top: 0px!important;
			padding-bottom: 0px!important;
		}
		.open{
			border-top: 1px solid red;
		}
				.open>a{
			background: #fff!important;
			color: #000;
			border-color: red!important;
		}
		.navbar-nav>.open>a:focus{
						background: #fff!important;
			color: #000!important;
			border-color: red!important;
		}
		.navbar-nav>.open>a:hover{
						background: #fff!important;
			color: #000!important;
			border-color: red!important;
		}
		.navbar-nav>li>a{
			padding-top: 10px!important;
			padding-bottom: 8px!important;
			text-transform: uppercase;
			font-size: 14px;
			font-weight: 700;
			color: #fff!important;
		}

		.navbar-nav>li>a:hover{
			border-top: 1px solid red;
						background: #fff!important;
			color: #000 !important;
			border-color: red!important;
		}
		.dropdown-menu{
			background: #0f297e !important;
		}
		.dropdown-menu li a{
			color:#fff !important;
		}
		.dropdown-menu li a:hover span{
			color:#0f297e !important;
		}

	</style>
</head>
<body>
	<div class="container" style=" max-width: 980px !important;">
		<div class="row ">
			<div id="header">
				<div class="logo">
					<p>
						<a href="/" title="Trang chủ"><img src="<?=base_url('assets')?>/build/images/header.jpg" alt="Trang chủ"></a>
					</p>
				</div>
				<div class="logo-mobile">
					<p>
						<img src="<?=base_url('assets')?>/build/images/logo-mobile.png" alt="">
					</p>
				</div>
				<!-- <nav class="navbar navbar-default" role="navigation">
					<div id="main-nav" class="container">
						Brand and toggle get grouped for better mobile display
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
								<span style="font-size:20px;cursor:pointer" onclick="openNav()">&#9776;</span>
							</button>
							<a class="navbar-brand" href="#">Title</a>
						</div>

						Collect the nav links, forms, and other content for toggling
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								<li class=""><a href="<?=base_url('home')?>" title="Giới thiệu"><span>Giới thiệu</span></a></li>
								<li class=""><a href="<?=base_url('home/tintuc')?>" title="Tin tức - Sự kiện"><span>Tin tức-Sự kiện</span></a></li>
								<li class=""><a href="<?=base_url('home/vanban')?>" title="Văn bản"><span>Văn bản</span></a></li>
								<li class=""><a href="<?=base_url('home/tailieu')?>" title="Tài liệu - Biểu mẫu"><span>Tài liệu-Biểu mẫu</span></a></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Chuẩn đầu ra <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="/quyet-dinh-ban-hanh-chuan-dau-ra.html" title="Quyết định ban hành chuẩn đầu ra"><span><i class="fa fa-arrow-circle-right"></i>&nbsp;Quyết định ban hành chuẩn đầu ra</span></a></li>
										<li><a href="/chuan-dau-ra-cac-nganh.html" title="Chuẩn đầu ra các ngành"><span><i class="fa fa-arrow-circle-right"></i>&nbsp;Chuẩn đầu ra các ngành</span></a></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">CTĐT <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="/qd-ban-hanh-chuong-trinh-dao-tao.html" title="QĐ ban hành chương trình đào tạo"><span><i class="fa fa-arrow-circle-right"></i>&nbsp;QĐ ban hành chương trình đào tạo</span></a></li>
										<li><a href="<?=base_url('home/ctdaotao')?>" title="Khung CTĐT các ngành"><span><i class="fa fa-arrow-circle-right"></i>&nbsp;Khung CTĐT các ngành</span></a></li>
									</ul>
								</li>
								<li class=""><a href="<?=base_url('home/decuonghocphan')?>" title="Đề cương học phần"><span>Đề cương học phần</span></a></li>
								<li class=""><a href="http://forum.cdio.nuce.edu.vn/" title="Thảo luận"><span>Thảo luận</span></a></li>
							</ul>
						</div>/.navbar-collapse
					</div>
				</nav> -->

				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								<li class=""><a href="<?=base_url('home')?>" title="Giới thiệu">Giới thiệu</a></li>
								<li><a href="<?=base_url('home/tintuc')?>" title="Tin tức - Sự kiện">Tin tức-Sự kiện</a></li>
								<li><a href="<?=base_url('home/vanban')?>" title="Văn bản">Văn bản</a></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Chuẩn đầu ra <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#" title="Quyết định ban hành chuẩn đầu ra"><span><i class="fa fa-arrow-circle-right"></i>&nbsp;Quyết định ban hành chuẩn đầu ra</span></a></li>
										<li><a href="#" title="Quyết định ban hành chuẩn đầu ra"><span><i class="fa fa-arrow-circle-right"></i>&nbsp;Chuẩn đầu ra các ngành</span></a></li>
									</ul>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">CTĐT <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#" title="QĐ ban hành chương trình đào tạo"><span><i class="fa fa-arrow-circle-right"></i>&nbsp;QĐ ban hành chương trình đào tạo</span></a></li>
										<li><a href="<?=base_url('home/ctdaotao')?>" title="Chuẩn đầu ra các ngành"><span><i class="fa fa-arrow-circle-right"></i>&nbsp;Khung CTĐT các ngành</span></a></li>
									</ul>
								</li>
								<li><a href="<?=base_url('home/decuonghocphan')?>" title="Đề cương học phần">Đề cương học phần</a></li>
								<li><a href="http://forum.cdio.nuce.edu.vn/" title="Văn bản">Thảo luận</a></li>
							</ul>
						</div><!-- /.navbar-collapse -->
					</div>
				</nav>


</div>

</div>
<div class="row">

	<div class="body" style="padding-top: 0px;">
		<?php $this->load->view($subview, $subdata);?>
	</div>


	<div id="footer-wrapper">
		<div class="container-fluid text-center">
			<div class="row">
				<div class="col-xs-12">
					<div class="content relative">
						<ul class="menu clearfix">
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="content">
						<p>
							<strong>Copyright ©2017 phòng Đào tạo - Trường Đại học Xây dựng
								<br>
							ĐT: 04.38691300. Email: phongdaotao@nuce.edu.vn</strong>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<a href="javascript:" id="toTop"></a>
</div>
</div>

</body>
</html>
