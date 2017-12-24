
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
				<h2>Thêm mới môn học</h2>
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
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Mã môn (*)</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="ma_mon" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Tên môn (*)</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="ten_mon" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số tín chỉ (*)</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" name="so_tin_chi" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số tiết lý thuyết</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" name="so_tiet_ly_thuyet" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số tiết thực hành</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" name="so_tiet_thuc_hanh" class="form-control" >
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

										<option value="<?php echo $mh->ma_mon ?>"><?php echo $mh->ma_mon . "-" . $mh->ten_mon ?></option>
									<?php endif?>
								<?php endforeach?>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">
							Đề cương
						</label>
								<div class="col-md-9 col-sm-9 col-xs-12">
							<div class="input-group">
						      <input name="decuong" type="text" value="" id="decuong" readonly="" class="form-control">
						      <span class="input-group-btn">
						        <button class="btn btn-default btn-pick" data-textbox="decuong" type="button">Chọn file</button>
						      </span>
						    </div>
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

	<script>
		$(document).ready(function() {
		/*$(".btn-pick").click(function(event) {
			selectFileWithCKFinder($(this).data('textbox'));
		});*/
		$(document).on('click', '.btn-pick', function(event) {
			event.preventDefault();
			selectFileWithCKFinder($(this).data('textbox'));

			/* Act on the event */
		});
		function selectFileWithCKFinder( elementId ) {
			CKFinder.popup( {
				chooseFiles: true,
				width: 800,
				height: 600,
				onInit: function( finder ) {
					finder.on( 'files:choose', function( evt ) {
						var file = evt.data.files.first();
						var output = document.getElementById( elementId );
						output.value = file.getUrl();
					} );

					finder.on( 'file:choose:resizedImage', function( evt ) {
						var output = document.getElementById( elementId );
						output.value = evt.data.resizedUrl;
					} );
				}
			} );
		}
	});
	</script>