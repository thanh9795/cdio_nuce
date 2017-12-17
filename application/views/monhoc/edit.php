<div class="row">
	<div class="col-md-12">
		<?php if (validation_errors() != NULL): ?>
			<div class="alert alert-danger">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>

				<?=validation_errors()?>
			</div>
		<?php endif?>
		<?php $this->load->view('partial/alert');?>
		<div class="x_panel">
			<div class="x_title">
				<h2>Môn học: <?=$monhoc->ten_mon?></h2>
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
				<form method="POST" class="form-horizontal form-label-left" enctype="multipart/form-data">


					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Mã môn</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="ma_mon" value="<?=$monhoc->ma_mon?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Tên môn</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="ten_mon" value="<?=$monhoc->ten_mon?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số tín chỉ</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" name="so_tin_chi" value="<?=$monhoc->so_tin_chi?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số tiết lý thuyết</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" name="so_tiet_ly_thuyet" value="<?=$monhoc->so_tiet_ly_thuyet?>" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số tiết thực hành</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" name="so_tiet_thuc_hanh" value="<?=$monhoc->so_tiet_thuc_hanh?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Học phần tiền quyết</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<script>
								$(document).ready(function() {
									$("#tienquyet").select2();
								});
							</script>

							<select multiple="" name="ma_hoc_phan_tien_quyet[]" id="tienquyet" class="form-control">
								<option value="">Chọn môn học tiên quyết</option>
								<?php foreach ($monhocs as $mh): ?>
									<?php if ($mh->ma_mon != $monhoc->ma_mon): ?>

										<option <?php echo in_array($mh->ma_mon, explode('|', $monhoc->ma_hoc_phan_tien_quyet)) ? "selected" : "" ?> value="<?php echo $mh->ma_mon ?>"><?php echo $mh->ma_mon . "-" . $mh->ten_mon ?></option>
									<?php endif?>
								<?php endforeach?>
							</select>
						</div>
					</div>
					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
							<a type="reset" class="btn btn-primary" href="<?=base_url('monhoc')?>">Hủy</a>
							<button type="submit" class="btn btn-success">Lưu</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
	</div>