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
	nav{
		background: none;
		border:none;
	}
	#main-nav{
		background: #0f297e;
	}
	#main-nav a{
		color: #fff;
		text-transform: uppercase;
		font-weight: 700;
		font-size: 13px;
	}
	#main-nav li:active {
		border-top: 3px solid #c00 !important;
		background: #fff;
	}
	#main-nav li:active {
		border-top: 3px solid #c00 !important;
		background: #fff;
	}
	#main-nav li a: active{
		background: #fff;
		color: #0f297e;
	}
	.panel-default{
		margin-top: 15px;
	}
	.navbar{
		margin-bottom: 0px;

	}
	.dropdown:hover .dropdown-menu{
		display: block;
	}
	.navbar-nav> .active{
		background: rgb(11, 54, 191);
	}
	.navbar-nav> li:hover .dropdown-toggle{
		background: #fff;
		color: #fff!important;
	}
	.navbar-nav> li:hover{
		border-top: 3px solid #c00 !important;
	}
	.navbar-nav> .active>a{
		background-color: rgba(231, 231, 231, 0)!important;
	}
	.nav > li > a {
		padding: 7px 10px !important;
	}
	.navbar-default{
		background-color: #fff !important;
		border-color: #fff !important;
	}
	.dropdown-menu{
		background: #0f297e;
		opacity: 0.8;
	}
	.dropdown-menu>li>a{
		color: #fff;
	}
	.dropdown-menu > li > a:hover, .dropdown-menu > li > a:focus{
		background: #0f297e !important;
		opacity: 0.8;
		}.dropdown-menu > li > a:hover{
			background: #0f297e !important;
			opacity: 0.8;
		}

		/* menu */
		.sidenav {
			height: 100%;
			width: 0;
			position: fixed;
			z-index: 1;
			top: 0;
			left: 0;
			background-color: #111;
			overflow-x: hidden;
			transition: 0.5s;
			padding-top: 60px;
		}

		.sidenav a {
			padding: 8px 8px 8px 32px;
			text-decoration: none;
			font-size: 25px;
			color: #818181;
			display: block;
			transition: 0.3s;
		}

		.sidenav a:hover {
			color: #f1f1f1;
		}

		.sidenav .closebtn {
			position: absolute;
			top: 0;
			right: 25px;
			font-size: 36px;
			margin-left: 50px;
		}

		@media screen and (max-height: 450px) {
			.sidenav {padding-top: 15px;}
			.sidenav a {font-size: 18px;}
		}
		.mySidenav ul li a{
			font-size: 10px;
		}
	</style>
</head>
<body>
	<div class="container">
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
				<nav class="navbar navbar-default" role="navigation">
					<div id="main-nav" class="container">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
								<span style="font-size:20px;cursor:pointer" onclick="openNav()">&#9776;</span>
							</button>
							<!-- <a class="navbar-brand" href="#">Title</a> -->
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								<li class=""><a href="<?=base_url('home')?>" title="Giới thiệu"><span>Giới thiệu</span></a></li>
								<li class=""><a href="<?=base_url('home/tintuc')?>" title="Tin tức - Sự kiện"><span>Tin tức-Sự kiện</span></a></li>
								<li class=""><a href="<?=base_url('home/vanban')?>" title="Văn bản"><span>Văn bản</span></a></li>
								<li class=""><a href="<?=base_url('home/tailieu')?>" title="Tài liệu - Biểu mẫu"><span>Tài liệu-Biểu mẫu</span></a></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Chuẩn đầu ra <b class="caret"></b></a>
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
						</div><!-- /.navbar-collapse -->
					</div>
				</nav>

<!-- 				<div id="cssmenu">
	<div id="menu-button">Menu</div>
	<ul class="menu_home">
		<li class=""><a href="<?=base_url('home')?>" title="Giới thiệu"><span>Giới thiệu</span></a></li>
		<li class=""><a href="<?=base_url('home/tintuc')?>" title="Tin tức - Sự kiện"><span>Tin tức - Sự kiện</span></a></li>
		<li class=""><a href="<?=base_url('home/vanban')?>" title="Văn bản"><span>Văn bản</span></a></li>
		<li class=""><a href="<?=base_url('home/tailieu')?>" title="Tài liệu - Biểu mẫu"><span>Tài liệu - Biểu mẫu</span></a></li>
		<li class=" has-sub">
			<a href="#" title="Chuẩn đầu ra"><span>Chuẩn đầu ra</span></a>
			<ul>
				<li><a href="/quyet-dinh-ban-hanh-chuan-dau-ra.html" title="Quyết định ban hành chuẩn đầu ra"><span><i class="fa fa-arrow-circle-right"></i>Quyết định ban hành chuẩn đầu ra</span></a></li>
				<li><a href="/chuan-dau-ra-cac-nganh.html" title="Chuẩn đầu ra các ngành"><span><i class="fa fa-arrow-circle-right"></i>Chuẩn đầu ra các ngành</span></a></li>
			</ul>
		</li>
		<li class=" has-sub">
			<a href="#" title="CTĐT"><span>CTĐT</span></a>
			<ul>
				<li><a href="/qd-ban-hanh-chuong-trinh-dao-tao.html" title="QĐ ban hành chương trình đào tạo"><span><i class="fa fa-arrow-circle-right"></i>QĐ ban hành chương trình đào tạo</span></a></li>
				<li><a href="<?=base_url('home/ctdaotao')?>" title="Khung CTĐT các ngành"><span><i class="fa fa-arrow-circle-right"></i>Khung CTĐT các ngành</span></a></li>
			</ul>
		</li>
		<li class=""><a href="<?=base_url('home/decuonghocphan')?>" title="Đề cương học phần"><span>Đề cương học phần</span></a></li>
		<li class=""><a href="http://forum.cdio.nuce.edu.vn/" title="Thảo luận"><span>Thảo luận</span></a></li>
	</ul>
</div>

<script>
	(function ($) {
		$(document).ready(function () {
			$('#cssmenu').prepend('<div id="menu-button">Menu</div>');
			$('#cssmenu #menu-button').on('click', function () {
				var menu = $(this).next('ul');
				if (menu.hasClass('open')) {
					menu.removeClass('open');
				}
				else {
					menu.addClass('open');
				}
			});
		});
	})(jQuery);
</script>
-->
</div>
<div id="mySidenav" class="sidenav">
	<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	<a href="<?=base_url('home')?>" title="Giới thiệu"><span>Giới thiệu</span></a>
	<a href="<?=base_url('home/tintuc')?>" title="Tin tức - Sự kiện"><span>Tin tức-Sự kiện</span></a>
	<a href="<?=base_url('home/vanban')?>" title="Văn bản"><span>Văn bản</span></a>
	<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown">Chuẩn đầu ra <b class="caret"></b></a>
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
	<a href="<?=base_url('home/decuonghocphan')?>" title="Đề cương học phần"><span>Đề cương học phần</span></a>
	<a href="http://forum.cdio.nuce.edu.vn/" title="Thảo luận"><span>Thảo luận</span></a>
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
<script>
	function openNav() {
		document.getElementById("mySidenav").style.width = "250px";
	}

	function closeNav() {
		document.getElementById("mySidenav").style.width = "0";
	}
</script>