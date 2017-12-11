<?php 
$data['title_page']="Chi tiết người dùng: ".$user->hoten;
$this->load->view('partial/title', $data);
?>
<script>
	$(document).ready(function() {
		$("#changepass").change(function() {
			if ($("#changepass").is(":checked")) {
				$("#newpass").addClass('show');
			}else {
				$("#newpass").removeClass('show');
			}
		});
	});
</script>
<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<?php 
		$this->load->view('partial/alert');
		?>
		<div class="x_panel">
			<div class="x_title">
				<h2><?=$user->hoten ?> </h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Settings 1</a>
							</li>
							<li><a href="#">Settings 2</a>
							</li>
						</ul>
					</li>
					<li><a class="close-link"><i class="fa fa-close"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<br>
				<form id="demo-form2" action="<?= base_url('user/edit_submit') ?>" method="POST" class="form-horizontal form-label-left">
					<input type="hidden" name="id" value="<?= $this->uri->segment(3) ?>">
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12" for="tennhom">Username <span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<input type="text" id="username" name="username" required="required" value="<?= $user->username ?>" class="form-control col-md-7 col-xs-12">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12" for="tennhom">Tên người dùng <span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<input type="text" id="hoten" name="hoten" required="required" value="<?= $user->hoten ?>" class="form-control col-md-7 col-xs-12">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12" for="tennhom">Đổi mật khẩu <span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="checkbox">
								<label>
									<input id="changepass" name="changepass" type="checkbox" class="js-switch">
								</label>
							</div>
						</div>
					</div>
					<div class="form-group" id="newpass" style="display: none">
						<label class="control-label col-md-3 col-sm-3 col-xs-12" for="tennhom">Mật khẩu mới <span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<input type="text" id="hoten" name="newpass" value="" class="form-control col-md-7 col-xs-12">
						</div>
					</div>
					
					
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12" for="tennhom">Nhóm người dùng <span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
								<select name="id_nhom" id="input" class="form-control" required="required">
							<?php foreach ($nhoms as $nhom): ?>
									<option <?=$nhom->id==$user->id_nhom?"selected":""?> value="<?= $nhom->id ?>"><?= $nhom->tennhom ?></option>
							<?php endforeach ?>
								</select>
						</div>
					</div>
					
					
					
					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
							<button class="btn btn-primary" type="reset">Reset</button>
							<button type="submit" class="btn btn-success">Cập nhật</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
</div>