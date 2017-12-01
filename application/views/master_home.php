<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>ĐH Xây Dựng</title>
	<!-- Latest compiled and minified CSS & JS -->
	<!-- Latest compiled and minified CSS & JS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <!-- Font Awesome -->
    <link href="<?=base_url('assets/vendors')?>/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
        <link href="<?=base_url('assets')?>/swal/sweetalert.css" rel="stylesheet">
        <link rel="stylesheet" href="https://sciactive.github.io/pnotify/src/pnotify.brighttheme.css">
        <script src="https://cdn.jsdelivr.net/npm/vue-resource@1.3.4"></script>
        <link href="<?=base_url('assets')?>/build/css/style.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/vue"></script>
        <script src="//cdn.jsdelivr.net/npm/sortablejs@1.7.0/Sortable.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/Vue.Draggable/2.15.0/vuedraggable.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/vue-resource@1.3.4"></script>
        <link rel="stylesheet" href="http://www.cdio.nuce.edu.vn/theme/default/css/StyleSheet.css">
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

				<div id="cssmenu">
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
						<li class=""><a href="<?= base_url('home/decuonghocphan') ?>" title="Đề cương học phần"><span>Đề cương học phần</span></a></li>
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

			</div>

			<div class="body">
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