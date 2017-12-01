<?php $this->load->view('partial/header'); ?>

<div class="col-md-3 left_col">
	<div class="left_col scroll-view">
		<div class="navbar nav_title" style="border: 0;">
			<a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a>
		</div>

		<div class="clearfix"></div>

		<!-- menu profile quick info -->
		<div class="profile clearfix">
			<div class="profile_pic">
				<img src="http://simpleicon.com/wp-content/uploads/user1.png" alt="..." class="img-circle profile_img">
			</div>
			<div class="profile_info">
				<span>Welcome,</span>
				<h2>John Doe</h2>
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
							<img src="images/img.jpg" alt="">John Doe
							<span class=" fa fa-angle-down"></span>
						</a>
						<ul class="dropdown-menu dropdown-usermenu pull-right">
							<li><a href="javascript:;"> Profile</a></li>
							<li>
								<a href="javascript:;">
									<span class="badge bg-red pull-right">50%</span>
									<span>Settings</span>
								</a>
							</li>
							<li><a href="javascript:;">Help</a></li>
							<li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
						</ul>
					</li>

					<li role="presentation" class="dropdown">
						<a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
							<i class="fa fa-envelope-o"></i>
							<span class="badge bg-green">6</span>
						</a>
						<ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
							<li>
								<a>
									<span class="image"><img src="images/img.jpg" alt="Profile Image"></span>
									<span>
										<span>John Smith</span>
										<span class="time">3 mins ago</span>
									</span>
									<span class="message">
										Film festivals used to be do-or-die moments for movie makers. They were where...
									</span>
								</a>
							</li>
							<li>
								<a>
									<span class="image"><img src="images/img.jpg" alt="Profile Image"></span>
									<span>
										<span>John Smith</span>
										<span class="time">3 mins ago</span>
									</span>
									<span class="message">
										Film festivals used to be do-or-die moments for movie makers. They were where...
									</span>
								</a>
							</li>
							<li>
								<a>
									<span class="image"><img src="images/img.jpg" alt="Profile Image"></span>
									<span>
										<span>John Smith</span>
										<span class="time">3 mins ago</span>
									</span>
									<span class="message">
										Film festivals used to be do-or-die moments for movie makers. They were where...
									</span>
								</a>
							</li>
							<li>
								<a>
									<span class="image"><img src="images/img.jpg" alt="Profile Image"></span>
									<span>
										<span>John Smith</span>
										<span class="time">3 mins ago</span>
									</span>
									<span class="message">
										Film festivals used to be do-or-die moments for movie makers. They were where...
									</span>
								</a>
							</li>
							<li>
								<div class="text-center">
									<a>
										<strong>See All Alerts</strong>
										<i class="fa fa-angle-right"></i>
									</a>
								</div>
							</li>
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