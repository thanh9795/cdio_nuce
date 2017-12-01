<div class="row">
	<div class="col-md-12">
		<?php if (validation_errors()!=NULL): ?>
		<div class="alert alert-danger">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			
			<?=validation_errors()  ?>
		</div>
		<?php endif ?>
		<div class="x_panel">
			<div class="x_title">
				<h2>Form Basic Elements <small>different form elements</small></h2>
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
				<form method="POST" class="form-horizontal form-label-left">

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số ký hiệu văn bản</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="so_ky_hieu_vb" value="<?= $vanban->so_ky_hieu_vb ?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Trích yếu</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="trich_yeu" value="<?= $vanban->trich_yeu ?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Nội dung</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<textarea class="form-control custom-control" name="noi_dung" value="<?= $vanban->noi_dung ?>" rows="4" style="resize:none"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Ngày tạo</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="date" name="date_created" value="<?= $vanban->date_created ?>" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Ngày sửa</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="date" name="date_updated" value="<?= $vanban->date_updated ?>" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số thứ tự</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="stt" value="<?= $vanban->stt ?>" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">File đính kèm</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="file" name="file_dinh_kem" value="<?= $vanban->file_dinh_kem ?>" class="form-control" >
						</div>
					</div>

					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
							<a type="reset" class="btn btn-primary" href="<?= base_url('vanban') ?>">Hủy</a>
							<button type="submit" class="btn btn-success">Lưu</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
</div>