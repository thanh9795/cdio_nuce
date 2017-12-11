<?php $this->load->view('partial/header'); ?>

<div class="col-md-3 left_col">
	<div class="left_col scroll-view">
		<div class="navbar nav_title" style="border: 0;">
			<a href="<?= base_url('Page') ?>" class="site_title"><i class="fa fa-paw"></i> <span>CDIO CPanel</span></a>
		</div>

		<div class="clearfix"></div>

		<!-- menu profile quick info -->
		<div class="profile clearfix">
			<div class="profile_pic">
				<img src="http://simpleicon.com/wp-content/uploads/user1.png" alt="..." class="img-circle profile_img">
			</div>
			<div class="profile_info">
				<span>Welcome,</span>
				<h2><?= $this->session->userdata('hoten'); ?></h2>
			</div>
		</div>
		<!-- /menu profile quick info -->
		<br>
		<!-- sidebar menu -->
		<?php $this->load->view('partial/sidebar'); ?>
	</div>

	<!-- top navigation -->
	<div class="top_nav">
		<div class="nav_menu">
			<nav>
				<div class="nav toggle">
					<a id="menu_toggle"><i class="fa fa-bars"></i></a>
				</div>

				<ul class="nav navbar-nav navbar-right">
					<li class="">
						<a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
							<img src="images/img.jpg" alt=""><?= $this->session->userdata('hoten'); ?>
							<span class=" fa fa-angle-down"></span>
						</a>
						<ul class="dropdown-menu dropdown-usermenu pull-right">
							<li><a href="javascript:;">Đổi mật khẩu</a></li>
							<li><a href="<?= base_url('page/logout') ?>"><i class="fa fa-sign-out pull-right"></i> Đăng xuất</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</div>
	
	<!-- /top navigation -->

	<!-- page content -->
	<div class="right_col" role="main">
							
		<!-- top tiles -->
		<?php $this->load->view($content, $contentdata); ?>
	</div>
	<footer>
		<div class="pull-right">
			NUCE-CDIO
		</div>
		<div class="clearfix"></div>
	</footer>
	<?php $this->load->view('partial/footer'); ?>													