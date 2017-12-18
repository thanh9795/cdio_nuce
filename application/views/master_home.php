<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
    <title><?= $title ?></title>
    <meta name="keywords" content="<?= $keyword ?>"/>
    <meta name="description" content="<?= $description ?>"/>
    <!-- for Facebook -->
    <meta property="og:title" content="<?= $title ?>"/>
    <meta property="og:type" content="article"/>
    <meta property="og:url" content="<?= base_url(uri_string()); ?>"/>
    <meta property="og:image" content="<?php echo base_url('/assets/build/images/header.jpg') ?>"/>
    <meta property="og:description" content="<?= $description ?>"/>
    <meta name="p:domain_verify" content="bd47d11d409de5174f303e94aaa2bdc8"/>

    <meta property="fb:pages" content="125520067595615" />
    <meta name="google-site-verification" content="zy6QyyBn4c0MUaoyz2jlyGUxvXAXidjUGWVMBAAAXJ4"/>

    <!-- for Google+ -->
    <meta itemprop="name" content="<?= $title ?>">
    <meta itemprop="description" content="<?= $description ?>">
    <meta itemprop="image" content="<?php echo base_url('/assets/build/images/header.jpg') ?>">

    <!-- for Twitter -->
    <meta name="twitter:card" content="summary"/>
    <meta name="twitter:title" content="<?= $description ?>"/>
    <meta name="twitter:description" content="<?= $description ?>"/>
    <meta name="twitter:image" content="<?php echo base_url('/assets/build/images/header.jpg') ?>"/>
	<!-- Latest compiled and minified CSS & JS -->
	<!-- Latest compiled and minified CSS & JS -->

	<script src="https://code.jquery.com/jquery.js"></script>
	<link rel="shortcut icon" type="image/png" href="<?=base_url('assets')?>/build/images/logo_1.png"/>
	<link rel="shortcut icon" type="image/png" href="<?=base_url('assets')?>/build/images/logo_1.png"/>
	<link rel="stylesheet" href="http://www.cdio.nuce.edu.vn/theme/default/css/bootstrap.css">
	<link rel="stylesheet" href="http://www.cdio.nuce.edu.vn/theme/default/js/jquery-1.10.2.min.js">
	<link rel="stylesheet" href="http://www.cdio.nuce.edu.vn/theme/default/js/bootstrap.min.js">
	<!-- Latest compiled and minified CSS & JS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<script src="//code.jquery.com/jquery.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>



	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.7/css/swiper.min.css">


	<!-- Font Awesome -->
	<link href="<?=base_url('assets/vendors')?>/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- NProgress -->
	<link href="<?=base_url('assets')?>/swal/sweetalert.css" rel="stylesheet">
	<link rel="stylesheet" href="https://sciactive.github.io/pnotify/src/pnotify.brighttheme.css">
	<script src="https://cdn.jsdelivr.net/npm/vue-resource@1.3.4"></script>
	<link href="<?=base_url('assets')?>/build/css/style.css" rel="stylesheet">
	<link href="<?=base_url('assets')?>/build/css/StyleSheet.css" rel="stylesheet">

	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.0.7/js/swiper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue"></script>

	<script src="https://cdn.jsdelivr.net/npm/vue-awesome-swiper@3.0.4/dist/vue-awesome-swiper.js"></script>	<script src="//cdn.jsdelivr.net/npm/sortablejs@1.7.0/Sortable.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/Vue.Draggable/2.15.0/vuedraggable.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue-resource@1.3.4"></script>
	<!-- <link rel="stylesheet" href="http://www.cdio.nuce.edu.vn/theme/default/css/StyleSheet.css"> -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


	<!-- <link rel="stylesheet" href="<?=base_url('assets')?>/build/js/bootstrap/dist/css/bootstrap.css">
	<link rel="stylesheet" href="<?=base_url('assets')?>/build/js/bootstrap/dist/css/bootstrap.min.css">
	<script src="<?=base_url('assets')?>/build/js/bootstrap/dist/js/bootstrap.css"></script>
	<script src="<?=base_url('assets')?>/build/js/bootstrap/dist/js/bootstrap.min.css"></script>
	<script src="<?=base_url('assets')?>/build/js/vue-resource-develop/dist/vue-resource.js"></script>
	<script src="<?=base_url('assets')?>/build/js/vue-resource-develop/dist/vue-resource.min.js"></script> -->


	<style>
		body{
			background:#C1C8DD!important;
	}

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
//border-top: 1px solid red;
color: #0f297e!important;
background:  #fff;
/* -webkit-box-shadow: 0px -10px 0px 0px rgba(219,33,57,1); */
-moz-box-shadow: 0px -10px 0px 0px rgba(219,33,57,1);
/* box-shadow: 0px -10px 0px 0px rgba(219,33,57,1); */
-webkit-box-shadow: 0px -5px 0px 0px rgba(219,33,57,1);
-moz-box-shadow: 0px -5px 0px 0px rgba(219,33,57,1);
box-shadow: 0px -5px 0px 0px rgba(219,33,57,1);
border-bottom: none!important;
}
.open>a{

background: #fff!important;
color: #0F297E;
border-color: red!important;
}
.navbar-nav>.open>a:focus{
background: #fff!important;
color: #000!important;
border-color: red!important;
}
/*	.navbar-nav>.open>a:hover{
background: #fff!important;
color: #000!important;
border-color: red!important;
}*/
.navbar-nav>li>a{
padding-bottom: 8px!important;
text-transform: uppercase;
font-size: 14px;
font-weight: 700;
color: #fff!important;
}
.container-fluid{
padding-right: 0px!important;
padding-left: 0px!important;
}

/*	.navbar-nav>li>a:hover{
border-top: 1px solid red;
background: #fff!important;
color: #000 !important;
border-color: red!important;
}*/
.dropdown-menu{
background: #0f297e !important;
}
.dropdown-menu li a{
color:#fff !important;
}
.dropdown-menu li a:hover span{
color:#0f297e !important;
}

iframe{
width: 100% !important;
}

.panel.panel-default.panelhk {
height: 115px;
font-size: 14px;
}
.col-md-1.nopad {
width: 105px;
}
#pageDetail {
text-align: inherit;
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
						<?php
$CI = &get_instance();
$CI->load->model('Menu_model');
$parent = $CI->Menu_model->get_all('', '', array(), '', '', '', ['position', 'ASC']);
$menu = array();

foreach ($parent as $p) {
	if ($p->parent_id == 0) {
		$child = array();
		foreach ($parent as $p2) {
			if ($p2->parent_id == $p->id) {
				$child[] = $p2;
			}
		}
		$menu[] = array(
			'parent' => $p,
			'child' => $child,
		);
	}
}

?>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								<?php foreach ($menu as $key => $mn): ?>
									<li>
										<?php if (count($mn['child'])): ?>
											<a href="<?=$mn['parent']->type == 1 ? $mn['parent']->link : base_url($mn['parent']->link)?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $mn['parent']->title ?> <b class="caret"></b></a>

											<ul class="dropdown-menu">
												<?php foreach ($mn['child'] as $key => $value): ?>
													<li><a href="<?=$value->type == 1 ? $value->link : base_url($value->link)?>" ><span><i class="fa fa-arrow-circle-right"></i>&nbsp;<?php echo $value->title ?></span></a></li>
												<?php endforeach?>
											</ul>
										<?php else: ?>
											<li class="<?=$this->uri->segment(1) == $mn['parent']->link ? "active" : ""?>"><a  href="<?=$mn['parent']->type == 1 ? $mn['parent']->link : base_url($mn['parent']->link)?>"><?php echo $mn['parent']->title ?></a></li>

										<?php endif?>
									</li>
								<?php endforeach?>
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
