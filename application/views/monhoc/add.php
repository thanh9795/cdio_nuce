
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
				<h2>Thêm mới môn học</h2>
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
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Mã môn</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="ma_mon" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Tên môn</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="ten_mon" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số tín chỉ</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="so_tin_chi" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số tiết lý thuyết</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="so_tiet_ly_thuyet" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số tiết thực hành</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="ten_mon" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">mã học phần tiền quyết</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="ma_hoc_phan_tien_quyet" class="form-control" >
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