<ol class="breadcrumb">
	<li>
		<a href="<?=base_url('nhomtailieu')?>">Nhóm tài liệu</a>
	</li>
	<li class="active"><?=$nhomtailieu->ten_nhom?></li>
</ol>
<div class="row">

	<div class="col-md-12">
		<?php if (validation_errors() != NULL): ?>
		<div class="alert alert-danger">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>

			<?=validation_errors()?>
		</div>
		<?php endif?>
		<div class="x_panel">
			<div class="x_title">
				<h2><small>Chỉnh sửa nhóm</small> <?=$nhomtailieu->ten_nhom?></h2>
				<ul class="nav navbar-right panel_toolbox">
					<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					</li>
					<li><a class="close-link"><i class="fa fa-close"></i></a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">


				<br>
				<form method="POST" class="form-horizontal form-label-left">

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Tên nhóm tài liệu</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="ten_nhom" value="<?=$nhomtailieu->ten_nhom?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">STT</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" name="stt" value="<?=$nhomtailieu->stt?>" class="form-control" >
						</div>
					</div>

					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
							<a type="reset" class="btn btn-primary" href="<?=base_url('tailieu')?>">Hủy</a>
							<button type="submit" class="btn btn-success">Lưu</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
</div>