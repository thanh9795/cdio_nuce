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
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Tiêu đề</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="tieude" value="<?=$tintuc->tieude?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Mô tả</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="mota" value="<?=$tintuc->mota?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Chi tiết</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<!-- <input type="text" name="chi_tiet" value="<?=$tintuc->chi_tiet?>" class="form-control" > -->
												<textarea id="chi_tiet" name="chi_tiet">
						<?=$tintuc->chi_tiet?>
					</textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số thứ tự</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="stt" value="<?=$tintuc->stt?>" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Ngày tạo</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="date" name="date_created" value="<?=$tintuc->date_created?>" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Ngày sửa</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="date" name="date_updated" value="<?=$tintuc->date_updated?>" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">File 1</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="file1" value="<?=$tintuc->file1?>" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">File 2</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="file2" value="<?=$tintuc->file2?>" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">File 3</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="file3" value="<?=$tintuc->file3?>" class="form-control" >
						</div>
					</div>

					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
							<a type="reset" class="btn btn-primary" href="<?=base_url('tintuc')?>">Hủy</a>
							<a type="submit" class="btn btn-success">Lưu</a>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(function() {
		if(CKEDITOR.instances['chi_tiet']) {
			CKEDITOR.remove(CKEDITOR.instances['chi_tiet']);
		}
		CKEDITOR.config.width = 750;
		CKEDITOR.config.height = 200;
		CKEDITOR.replace('chi_tiet',{});
	})
</script>
