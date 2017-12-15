
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
				<h2><small><a href="<?=base_url('tintuc')?>">Tin tức /</a></small> Thêm mới tin tức</h2>
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
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Tiêu đề</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="tieude" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Mô tả</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<textarea id="mota" name="mota" style="width:100% !important;">

							</textarea>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Chi tiết</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<textarea id="chi_tiet" name="chi_tiet">

							</textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số thứ tự</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" name="stt" class="form-control" >
						</div>
					</div>

					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
							<button type="reset" class="btn btn-primary">Hủy</button>
							<button type="submit" class="btn btn-success">Lưu</button>
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
CKEDITOR.config.height = 300;
CKEDITOR.replace('chi_tiet',{});
})
</script>
