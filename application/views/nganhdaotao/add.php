
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
				<h2><small><a href="<?=base_url('nganhdaotao')?>">Ngành đào tạo /</a></small> Thêm mới ngành đào tạo</h2>
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

				<form method="POST" enctype="multipart/form-data" class="form-horizontal form-label-left">

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Mã ngành (*)</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="ma_nganh" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Tên ngành (*)</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="ten_nganh" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">STT </label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" name="stt" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số học kỳ (*)</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" min="1" max="20" name="so_hoc_ky" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Chuẩn đầu ra
						<p><small class="success">(Định dạng pdf)</small></p>
						</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<div class="input-group">
								<input type="text" name="chuandaura" readonly="" id="filepdf" placeholder="" aria-describedby="basic-addon2" class="form-control">
								<span id="uploadbtn" class="input-group-addon"><i class="fa fa-upload"></i> Upload</span>
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
		$("#uploadbtn").click(function(event) {
			/* Act on the event */
			selectFileWithCKFinder("filepdf");

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
						var ext=file.getUrl().split(".")
						ext=ext[ext.length-1];
						if (ext==="pdf") {

							output.value=file.getUrl();
						}else{
							swal({
								icon:'info',
								text:'Định dạng yêu cầu là file pdf'
							});
						}
						//output.value = file.getUrl();
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