<ol class="breadcrumb">
	<li>
		<a href="<?=base_url('nganhdaotao')?>">Ngành đào tạo</a>
	</li>
	<li class="active"><?=$nganhdaotao->ten_nganh?></li>
</ol>
<div class="row" id="nganhdaotao">
	<div class="col-md-12">
		<?php if (validation_errors() != NULL): ?>
			<div class="alert alert-danger">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>

				<?=validation_errors()?>
			</div>
		<?php endif?>
		<div class="x_panel">
			<div class="x_title">
				<h2>Chỉnh sửa ngành đào tạo</h2>
				<?php $this->load->view('partial/alert');?>
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
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Mã ngành</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="ma_nganh" value="<?=$nganhdaotao->ma_nganh?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Tên ngành</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="ten_nganh" value="<?=$nganhdaotao->ten_nganh?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">STT</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="number" name="stt" value="<?=$nganhdaotao->stt?>" class="form-control" >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Số học kỳ</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="text" name="so_hoc_ky" value="<?=$nganhdaotao->so_hoc_ky?>" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Chuẩn đầu ra
							<p><small class="success">(Định dạng pdf)</small></p>
						</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<input type="file" name="chuandaura" value="<?=$nganhdaotao->chuandaura?>" class="form-control" >
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Chuẩn đầu ra</label>
						<div class="col-md-9 col-sm-9 col-xs-12">
							<div class="checkbox">
								<label>
									<input name="upload" type="checkbox" v-model="upload" value="1">
									Upload file chuẩn đầu ra (PDF)
									<a class="btn btn-primary btn-xs" data-toggle="modal" href='#modal-id'>Xem chuẩn đầu ra</a>
									<div class="modal fade" id="modal-id">
										<div class="modal-dialog" style="width: 80%">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
													<h4 class="modal-title"><?=$nganhdaotao->ten_nganh?></h4>
												</div>
												<div class="modal-body">
													<?php if ($nganhdaotao->chuandaura != NULL): ?>

														<object data="<?=base_url($nganhdaotao->chuandaura)?>" type="application/pdf" width="100%" height="500px">
															<p><b>Trình duyệt của bạn không hỗ trợ xem pdf <a href="<?=base_url($nganhdaotao->chuandaura)?>">Download PDF</a>.</p>
															</object>
														<?php else: ?>
															<div class="alert alert-danger">
																<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
																<strong>Ngành này chưa có chuẩn đầu ra</strong>
															</div>
														<?php endif?>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
													</div>
												</div>
											</div>
										</div>
									</label>
									<input v-if="upload" type="file" name="chuandaura" id="input" class="form-control" value="" >
								</div>
							</div>
						</div>

						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
								<a type="reset" class="btn btn-primary" href="<?=base_url('nganhdaotao')?>">Hủy</a>
								<button type="submit" class="btn btn-success">Lưu</button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		var vm = new Vue({

		el: "#nganhdaotao",
		data () {
		return {
		upload:false
	};
}

})
</script>