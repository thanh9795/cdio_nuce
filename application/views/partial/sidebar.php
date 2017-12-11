<!--  <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
	<div class="menu_section">
		<h3>General</h3>
		<ul class="nav side-menu">


			<li><a href="<?=base_url('Page')?>"><i class="fa fa-home"></i> Quản lý chung</a></li>
			<li><a><i class="fa fa-edit"></i> Quản lý tài liệu <span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">
					<li><a href="<?=base_url('Tailieu')?>">Danh sách tài liệu</a></li>
					<li><a href="<?=base_url('Nhomtailieu')?>">Nhóm tài liệu</a></li>
				</ul>
			</li>
			<li><a href="<?=base_url('Tintuc')?>"><i class="fa fa-desktop"></i> Quản lý tin tức</a></li>
			<li><a href="<?=base_url('Hinhanh')?>"><i class="fa fa-table"></i> Quản lý hình ảnh</a></li>
			<li><a href="<?=base_url('Vanban')?>"><i class="fa fa-bar-chart-o"></i> Quản lý văn bản điều hành</a></li>
			<li><a><i class="fa fa-clone"></i> Quản lý CTĐT <span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">
					<li><a href="<?=base_url('Qd_ctdt')?>">Quyết định CTĐT</a></li>
					<li><a href="<?=base_url('Nganhdaotao')?>">Quản lý các ngành</a></li>
					<li><a href="<?=base_url('Monhoc')?>">Quản lý môn học</a></li>
				</ul>
			</li>
			<li><a><i class="fa fa-clone"></i> QĐ chuẩn đầu ra <span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">
					<li><a href="<?=base_url('Qd_chuandaura')?>">Quyết định chuẩn đầu ra</a></li>
					<li><a href="<?=base_url('Monhoc')?>">QĐ chuẩn đầu ra các ngành</a></li>
				</ul>
			</li>
			<li><a><i class="fa fa-clone"></i> Quản lý website <span class="fa fa-chevron-down"></span></a>
				<ul class="nav child_menu">
					<li><a href="fixed_sidebar.html">Quản lý menu</a></li>
					<li><a href="fixed_footer.html">Tài khoản quản trị</a></li>
					<li><a href="fixed_footer.html">Tài khoản thành viên</a></li>
					<li><a href="<?=base_url('gioithieu')?>">Cấu hình</a></li>
				</ul>
			</li>
		</ul>
	</div>
</div>

<div class="sidebar-footer hidden-small">
	<a data-toggle="tooltip" data-placement="top" title="" data-original-title="Settings">
		<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
	</a>
	<a data-toggle="tooltip" data-placement="top" title="" data-original-title="FullScreen">
		<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
	</a>
	<a data-toggle="tooltip" data-placement="top" title="" data-original-title="Lock">
		<span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
	</a>
	<a data-toggle="tooltip" data-placement="top" title="" href="login.html" data-original-title="Logout">
		<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
	</a>
</div>
</div>


-->
<?php 
$CI =& get_instance();
$CI->load->model('phanquyen');
$parent=$CI->phanquyen->getrole($this->session->userdata('id_nhom'));  
//var_dump($parent);
$menu=array();

foreach ($parent as $p) {
	if ($p->id_parent==0) {
		$child=array();
		foreach ($parent as $p2) {
			if ($p2->id_parent==$p->id) {
				$child[]=$p2;
			}
		}
		$menu[]=array(
			'parent'=>$p,
			'child'=>$child
		);
	}
}


 ?>
<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
	<div class="menu_section">
		<h3>Navigation</h3>


		<?php foreach ($menu as $key => $value): ?>
			<ul class="nav side-menu">
				<li class="<?=$value['parent']->shown==0?"hidden":"" ?>" >
					<a href="<?= $value['parent']->havenochild!=1?base_url($value['parent']->url):"javascript:void(0)" ?>" ><i class="<?= $value['parent']->icon ?>"></i> 
					<?= $value['parent']->tenchucnang ?>
				<?php if ($value['parent']->havenochild): ?>
					<span class="fa fa-chevron-down"></span>
				<?php endif ?>
					
				</a>
					<ul class="nav child_menu">
						<?php foreach ($value['child'] as $child): ?>
							<li class="<?=$child->shown==0?"hidden":"" ?>" ><a href="<?= base_url($child->url) ?>"><?= $child->tenchucnang ?></a></li>
						<?php endforeach ?>
					</ul>
				</li>
			</ul>
		
		<?php endforeach ?>

	</div>

</div>
<!-- /sidebar menu -->

<!-- /menu footer buttons -->
<div class="sidebar-footer hidden-small">
	<a data-toggle="tooltip" data-placement="top" title="Settings">
		<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
	</a>
	<a data-toggle="tooltip" data-placement="top" title="FullScreen">
		<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
	</a>
	<a data-toggle="tooltip" data-placement="top" title="Lock">
		<span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
	</a>
	<a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
		<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
	</a>
</div>
<!-- /menu footer buttons -->
</div>